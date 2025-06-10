// lib/features/scanner/scanner_screen.dart
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:quality_scan_pro/shared/widgets/app_drawer.dart';
import 'package:quality_scan_pro/core/di/service_locator.dart';
import 'package:quality_scan_pro/core/database/app_db.dart';
import 'package:go_router/go_router.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  MobileScannerController cameraController = MobileScannerController(
    // Considera añadir opciones aquí si es necesario más adelante:
    // detectionSpeed: DetectionSpeed.noDuplicates,
    // formats: [BarcodeFormat.ean13, BarcodeFormat.code128],
  );
  bool _isScanning = false;
  String? _scannedEan;
  bool _isProdPesable = false;
  Product? _currentScannedProduct;

  final AppDatabase _appDb = sl<AppDatabase>();

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  void _startScan() {
    if (!_isScanning) {
      setState(() {
        _isScanning = true;
        _scannedEan = null;
        _currentScannedProduct = null;
      });
    }
  }

  void _stopScan() {
    if (_isScanning) {
      setState(() {
        _isScanning = false;
      });
    }
  }

  Future<void> _processEan(String ean) async {
    print('--- _processEan INICIADO con EAN: $ean ---');
    if (!mounted) {
      print('_processEan: Widget no montado, saliendo.');
      return;
    }

    setState(() {
      _isScanning = false;
      _scannedEan = ean;
    });

    final productData = await _appDb.getProductByEan(ean);

    if (!mounted) return;

    setState(() {
      _currentScannedProduct = productData;
    });

    if (productData != null) {
      print('_processEan: Producto ENCONTRADO en BD: ${productData
          .name}, EAN: ${productData.ean}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Producto encontrado: ${productData.name}')),
      );
    } else {
      print('_processEan: Producto con EAN $ean NO encontrado en la BD.');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Producto con EAN $ean no encontrado.')),
      );
    }
    print('--- _processEan FINALIZADO ---');
  }

  void _onBarcodeDetected(BarcodeCapture capture) {
    if (!_isScanning) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? rawValue = barcodes.first.rawValue;
      if (rawValue != null && rawValue.isNotEmpty) {
        // Para evitar procesar el mismo código múltiples veces si la cámara sigue activa
        // y el código sigue en el frame, podrías añadir una lógica aquí
        // si _processEan no detuviera _isScanning inmediatamente.
        // Por ahora, _processEan ya pone _isScanning = false.
        _processEan(rawValue);
      }
    }
  }

  void _manualEntry() {
    TextEditingController manualEanController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Ingresar EAN Manualmente'),
          content: TextField(
            controller: manualEanController,
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Ej: 7801234567890',
              labelText: 'Código EAN',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: Text('Listo', style: TextStyle(color: Theme
                  .of(context)
                  .colorScheme
                  .primary, fontWeight: FontWeight.bold)),
              onPressed: () {
                final String manualEan = manualEanController.text.trim();
                Navigator.of(dialogContext).pop();
                if (manualEan.isNotEmpty) {
                  _processEan(manualEan);
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escáner de Productos'),
      ), // Fin AppBar
      drawer: const AppDrawer(),
      body: Column( // Column Principal del Body
        children: <Widget>[
          // --- Sección Superior: Controles de "Prod. pesable" y "EAN Manual" ---
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: _isProdPesable,
                      onChanged: (bool value) {
                        setState(() {
                          _isProdPesable = value;
                        });
                        print('Producto pesable: $_isProdPesable');
                      },
                    ), // Fin Switch
                    const SizedBox(width: 4),
                    const Text('Prod. pesable', style: TextStyle(fontSize: 16)),
                  ], // Fin children de Row interno
                ), // Fin Row interno
                ElevatedButton.icon(
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('# EAN Manual'),
                  onPressed: _manualEntry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme
                        .of(context)
                        .colorScheme
                        .surfaceVariant,
                    foregroundColor: Theme
                        .of(context)
                        .colorScheme
                        .onSurfaceVariant,
                  ),
                ), // Fin ElevatedButton.icon
              ], // Fin children de Row principal
            ), // Fin Row principal
          ),
          // Fin Padding
          const Divider(height: 1),

          // --- Sección Central: Vista del Escáner o Botón para Escanear ---
          Expanded(
            child: _isScanning
                ? Stack(
              alignment: Alignment.center,
              children: [
                MobileScanner(
                  controller: cameraController,
                  onDetect: _onBarcodeDetected,
                ), // Fin MobileScanner
                Container( // Overlay visual
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.85,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.35,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.green.withOpacity(0.7), width: 4),
                    borderRadius: BorderRadius.circular(16),
                  ), // Fin BoxDecoration
                ), // Fin Container (Overlay)
                Positioned( // Línea de escaneo (decorativa)
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.85,
                    height: 2,
                    color: Colors.red.withOpacity(0.7),
                  ), // Fin Container (Línea)
                ), // Fin Positioned (Línea)
                Positioned(
                  bottom: 30,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.stop_circle_outlined),
                    label: const Text('DETENER'),
                    onPressed: _stopScan,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ), // Fin ElevatedButton.styleFrom
                  ), // Fin ElevatedButton.icon
                ) // Fin Positioned (Botón Detener)
              ], // Fin children de Stack
            ) // Fin Stack
                : Center( // Si no está escaneando
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_2_rounded, size: 100, color: Theme
                        .of(context)
                        .colorScheme
                        .primary),
                    const SizedBox(height: 20),
                    if (_scannedEan != null && _scannedEan!.isNotEmpty)
                      Card(
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text('Último EAN: $_scannedEan', style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium),
                              if (_currentScannedProduct != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  'Producto: ${_currentScannedProduct!.name}',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge,
                                  textAlign: TextAlign.center,
                                ), // Fin Text
                              ] else
                                ...[
                                  const SizedBox(height: 4),
                                  const Text(
                                    '(Producto no encontrado en BD local)',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.orange),
                                  ) // Fin Text
                                ]
                            ], // Fin children de Column interno
                          ), // Fin Column interno
                        ), // Fin Padding
                      ), // Fin Card
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.camera_alt_outlined),
                      label: const Text(
                          'INICIAR ESCANEO', style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        backgroundColor: Theme
                            .of(context)
                            .colorScheme
                            .primary,
                        foregroundColor: Theme
                            .of(context)
                            .colorScheme
                            .onPrimary,
                      ), // Fin ElevatedButton.styleFrom
                      onPressed: _startScan,
                    ), // Fin ElevatedButton.icon (Iniciar Escaneo)
                    const SizedBox(height: 20),
                    if (_currentScannedProduct !=
                        null) // Solo mostrar si el producto se encontró
                      ElevatedButton(
                        onPressed: () {
                          context.pushNamed(
                            AppRoutes.productDetail,
                            pathParameters: {'ean': _scannedEan!},
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: Theme
                              .of(context)
                              .colorScheme
                              .secondary,
                        ), // Fin ElevatedButton.styleFrom
                        child: Text(
                          'INSPECCIONAR: ${_currentScannedProduct!.name}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Theme
                              .of(context)
                              .colorScheme
                              .onSecondary),
                        ), // Fin Text
                      ) // Fin ElevatedButton (Inspeccionar)
                  ], // Fin children de Column (Centro)
                ), // Fin Column (Centro)
              ), // Fin Padding
            ), // Fin Center
          ),
          // Fin Expanded

          // --- Sección Inferior: Contador de Retirados ---
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: 12.0, horizontal: 16.0),
            color: Theme
                .of(context)
                .colorScheme
                .surfaceVariant,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0 Retirados (placeholder)',
                  style: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .onSurfaceVariant,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ), // Fin TextStyle
                ), // Fin Text
              ], // Fin children de Row (Contador)
            ), // Fin Row (Contador)
          )


        ], // Fin children del Column Principal del Body
      ), // Fin Column Principal del Body
    ); // Fin Scaffold
  }
}