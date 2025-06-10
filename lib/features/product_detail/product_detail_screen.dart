// lib/features/product_detail/product_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:quality_scan_pro/core/database/app_db.dart';
import 'package:quality_scan_pro/core/di/service_locator.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';

class ProductDetailScreen extends StatefulWidget {
  final String ean;

  const ProductDetailScreen({
    super.key,
    required this.ean,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final AppDatabase _db = sl<AppDatabase>();
  Product? _product;
  bool _isLoading = true;
  String? _errorMessage;
  DateTime? _selectedItemExpiryDate; // Fecha de vencimiento DEL ÍTEM FÍSICO
  final DateFormat _dateFormatter = DateFormat('dd/MM/yyyy');

  // Fechas Límite calculadas desde HOY para tomar decisiones
  DateTime? _receptionAcceptanceMinExpiryDate; // El ítem debe vencer EN o DESPUÉS de esta fecha para ser aceptado en recepción (65% vida útil restante)
  DateTime? _salaRetreatIfExpiryBeforeDate;    // Si el ítem vence ANTES de esta fecha, se retira de sala (50% vida útil restante)
  DateTime? _extensionConsiderIfExpiryAfterDate; // Si el ítem vence EN o DESPUÉS de esta fecha, se puede considerar extensión (35% vida útil restante)

  static const int _diasZonaExtrema = 2; // Asumimos zona extrema por ahora

  @override
  void initState() {
    super.initState();
    _loadProductDetailsAndCalcInitialLimits();
  }

  Future<void> _loadProductDetailsAndCalcInitialLimits() async {
    setState(() { _isLoading = true; _errorMessage = null; });
    try {
      final productData = await _db.getProductByEan(widget.ean);
      if (!mounted) return;

      if (productData == null) {
        setState(() {
          _product = null;
          _isLoading = false;
          _errorMessage = 'Producto no encontrado en BD con EAN: ${widget.ean}';
        });
        return;
      }

      _product = productData;
      _calculateDecisionLimitDates(); // Calcula las fechas límite basadas en HOY

      setState(() { _isLoading = false; });

    } catch (e, s) {
      if (!mounted) return;
      setState(() { _isLoading = false; _errorMessage = 'Error al cargar producto.'; });
      print('Error cargando producto en ProductDetailScreen: $e\n$s');
    }
  }

  void _calculateDecisionLimitDates() {
    // Calcula las fechas límite para las decisiones, basadas en la fecha actual
    if (_product == null || _product!.shelfLifeDays == null || _product!.shelfLifeDays! <= 0) {
      setState(() {
        _receptionAcceptanceMinExpiryDate = null;
        _salaRetreatIfExpiryBeforeDate = null;
        _extensionConsiderIfExpiryAfterDate = null;
      });
      return;
    }

    final int shelfLife = _product!.shelfLifeDays!;
    final DateTime currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day); // Usar solo la fecha, sin hora

    // Recepción: El producto debe tener al menos 65% de vida útil RESTANTE
    // Días que deben quedar = shelfLife * 0.65
    int diasMinimosRestantesRecepcion = (shelfLife * 0.65).round();
    _receptionAcceptanceMinExpiryDate = currentDate.add(Duration(days: diasMinimosRestantesRecepcion + _diasZonaExtrema));

    // Sala: El producto debe tener al menos 50% de vida útil RESTANTE para NO ser retirado
    // (o se retira si tiene MENOS del 50% restante)
    int diasMinimosRestantesSala = (shelfLife * 0.50).round();
    _salaRetreatIfExpiryBeforeDate = currentDate.add(Duration(days: diasMinimosRestantesSala + _diasZonaExtrema));

    // Extensión: Se puede considerar si el producto tiene al menos 35% de vida útil RESTANTE
    int diasMinimosRestantesExtension = (shelfLife * 0.35).round();
    _extensionConsiderIfExpiryAfterDate = currentDate.add(Duration(days: diasMinimosRestantesExtension + _diasZonaExtrema));

    print('--- Fechas Límite de Vencimiento (calculadas desde hoy) ---');
    print('Vida Útil Producto: $shelfLife días');
    print('Recepción (debe vencer en/después de): ${_receptionAcceptanceMinExpiryDate != null ? _dateFormatter.format(_receptionAcceptanceMinExpiryDate!) : "N/A"}');
    print('Sala (retirar si vence antes de): ${_salaRetreatIfExpiryBeforeDate != null ? _dateFormatter.format(_salaRetreatIfExpiryBeforeDate!) : "N/A"}');
    print('Extensión (considerar si vence en/después de): ${_extensionConsiderIfExpiryAfterDate != null ? _dateFormatter.format(_extensionConsiderIfExpiryAfterDate!) : "N/A"}');

    setState(() {});
  }

  Future<void> _selectUserProvidedExpiryDate(BuildContext context) async {
    final DateTime initialDate = _selectedItemExpiryDate ?? DateTime.now().add(const Duration(days: 1));
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year -1), // Permitir seleccionar fechas de vencimiento que ya pasaron para evaluación
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked != null && picked != _selectedItemExpiryDate) {
      setState(() {
        _selectedItemExpiryDate = picked;
        // Los cálculos de las fechas límite (reception, sala, extension)
        // ya se hicieron en _loadProductDetailsAndCalcInitialLimits o al seleccionar una fecha
        // y se basan en DateTime.now(). La fecha del item es para la *comparación*.
      });
    }
  }

  // Lógica para determinar el estado del producto (esto se moverá a un BLoC/Servicio)
  String _getProductStatusMessage() {
    if (_selectedItemExpiryDate == null) return "Selecciona la fecha de vencimiento del ítem.";
    if (_product == null || _product!.shelfLifeDays == null) return "Información del producto no disponible.";

    // Asumimos que estamos en un flujo de RECEPCIÓN por ahora para el ejemplo
    // Esta lógica necesitará saber el contexto (Recepción, Sala, etc.)
    final DateTime currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

    // Para RECEPCIÓN
    if (_receptionAcceptanceMinExpiryDate != null) {
      if (_selectedItemExpiryDate!.isBefore(_receptionAcceptanceMinExpiryDate!)) {
        return "RECHAZAR (Vence antes del límite de recepción: ${_dateFormatter.format(_receptionAcceptanceMinExpiryDate!)})";
      } else {
        return "ACEPTAR para recepción (Vence en/después del límite)";
      }
    }
    // Para SALA (este es un ejemplo, necesitaríamos saber si estamos en modo sala)
    // if (_salaRetreatIfExpiryBeforeDate != null) {
    //   if (_selectedItemExpiryDate!.isBefore(_salaRetreatIfExpiryBeforeDate!)) {
    //     return "RETIRAR DE SALA (Vence antes del límite: ${_dateFormatter.format(_salaRetreatIfExpiryBeforeDate!)})";
    //   } else {
    //     return "OK PARA SALA";
    //   }
    // }
    return "Cálculos pendientes o información incompleta.";
  }


  @override
  Widget build(BuildContext context) {
    // ... (código del Scaffold, AppBar, body con _isLoading, _errorMessage, _product == null se mantiene igual) ...
    return Scaffold(
      appBar: AppBar(title: Text(_product?.name ?? 'Detalle e Inspección')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
          ? Center(child: Padding(padding: const EdgeInsets.all(16.0), child: Text(_errorMessage!, style: const TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center)))
          : _product == null
          ? Center(child: Padding(padding: const EdgeInsets.all(16.0), child: Text('Información del producto con EAN ${widget.ean} no disponible.', textAlign: TextAlign.center)))
          : _buildProductDetailsBody(),
    );
  }

  Widget _buildProductDetailsBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card( /* ... (Mostrar detalles del producto como EAN, Nombre, Vida Útil Maestro, Proveedor - Sin cambios) ... */ ),
          const Divider(height: 32, thickness: 1),
          Text(
            'Inspección del Ítem Físico:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16),
          TextFormField(
            readOnly: true,
            controller: TextEditingController(
              text: _selectedItemExpiryDate == null ? '' : _dateFormatter.format(_selectedItemExpiryDate!),
            ),
            decoration: InputDecoration(
              labelText: 'Fecha Vencimiento (Ítem Físico)',
              hintText: 'Toca el icono para seleccionar fecha',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_today_outlined),
                tooltip: 'Seleccionar Fecha',
                onPressed: () => _selectUserProvidedExpiryDate(context),
              ),
            ),
            onTap: () => _selectUserProvidedExpiryDate(context),
          ),
          const SizedBox(height: 20),

          Text(
            'Límites de Decisión (calculados desde hoy):',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          if (_receptionAcceptanceMinExpiryDate != null)
            Card(
              color: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.5),
              child: ListTile(
                leading: Icon(Icons.input_rounded, color: Theme.of(context).colorScheme.onTertiaryContainer),
                title: const Text('Límite Aceptación Recepción (65% restante)'),
                subtitle: Text('Ítem debe vencer EN o DESPUÉS de: ${_dateFormatter.format(_receptionAcceptanceMinExpiryDate!)}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          const SizedBox(height: 8),
          if (_salaRetreatIfExpiryBeforeDate != null)
            Card(
              color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.5),
              child: ListTile(
                leading: Icon(Icons.storefront_outlined, color: Theme.of(context).colorScheme.onSecondaryContainer),
                title: const Text('Límite Retiro Sala (50% restante)'),
                subtitle: Text('Retirar si ítem vence ANTES de: ${_dateFormatter.format(_salaRetreatIfExpiryBeforeDate!)}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          const SizedBox(height: 8),
          if (_extensionConsiderIfExpiryAfterDate != null)
            Card(
              color: Theme.of(context).colorScheme.surfaceVariant,
              child: ListTile(
                leading: Icon(Icons.timelapse_rounded, color: Theme.of(context).colorScheme.onSurfaceVariant),
                title: const Text('Considerar Extensión (35% restante)'),
                subtitle: Text('Si ítem vence EN o DESPUÉS de: ${_dateFormatter.format(_extensionConsiderIfExpiryAfterDate!)}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '*Fechas límite calculadas desde hoy (${_dateFormatter.format(DateTime.now())}) usando Vida Útil de ${_product!.shelfLifeDays ?? 'N/A'} días y +$_diasZonaExtrema días por zona extrema (aplicado siempre por ahora).',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 16),
          if (_selectedItemExpiryDate != null)
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Decisión Sugerida (Ej. para Recepción):\n${_getProductStatusMessage()}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.blue[800]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          const SizedBox(height: 32),
          Row( /* ... (Botones RECHAZAR/ACEPTAR, sin cambios en su estructura, pero su onPressed ahora tiene más contexto) ... */ )
        ],
      ),
    );
  }
}