// lib/shared/services/data_import_service.dart
import 'dart:async';
import 'package:flutter/foundation.dart'; // Para compute
import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:quality_scan_pro/core/database/app_db.dart'; // Tu AppDatabase y Product
import 'package:drift/drift.dart' as drift; // Para drift.Value

// --- INICIO DE FUNCIONES HELPER INTERNAS (para _parseCsvInBackground) ---
// Estas funciones ahora aceptan la fila y el índice para más seguridad
int? _parseIntOrNull(List<dynamic> row, int index) {
  if (index >= row.length || row[index] == null) return null;
  final String sValue = row[index].toString().trim();
  if (sValue.isEmpty || sValue.toUpperCase() == "NO") return null;
  return int.tryParse(sValue);
}

bool _parseBoolFromCsvFlag(List<dynamic> row, int index) {
  if (index >= row.length || row[index] == null) return false;
  final String sValue = row[index].toString().trim().toUpperCase();
  if (sValue.isEmpty) return false; // Si está vacío, asumimos que no aplica el sello
  return sValue != "NO"; // Si no es "NO" (y no está vacío), entonces el sello aplica (es true)
}

drift.Value<String?> _parseStringOrNull(List<dynamic> row, int index) {
  if (index >= row.length || row[index] == null) return const drift.Value(null);
  final String sValue = row[index].toString().trim();
  if (sValue.isEmpty) return const drift.Value(null);
  return drift.Value(sValue);
}

drift.Value<String?> _parseTextFromNumericWithComma(List<dynamic> row, int index) {
  if (index >= row.length || row[index] == null) return const drift.Value(null);
  final String sValue = row[index].toString().trim();
  if (sValue.isEmpty) return const drift.Value(null);
  return drift.Value(sValue.replaceAll(',', '.'));
}
// --- FIN DE FUNCIONES HELPER INTERNAS ---

// Esta función DEBE ser top-level o static para ser usada con compute.
List<ProductsCompanion> _parseCsvInBackground(String csvString) {
  print('Isolate: Iniciando parseo de CSV...');
  List<List<dynamic>> csvTable = const CsvToListConverter(
    fieldDelimiter: ',',
    textDelimiter: '"',
    textEndDelimiter: '"',
    eol: '\n',
    shouldParseNumbers: false,
  ).convert(csvString);

  if (csvTable.length <= 1) {
    print('Isolate: CSV vacío o solo contiene encabezados.');
    return [];
  }

  final List<ProductsCompanion> productsToInsert = [];
  print('Isolate: Total filas en CSV (incluyendo encabezado): ${csvTable.length}');
  print('Isolate: Procesando ${csvTable.length - 1} filas de datos...');

  // Definir los índices de las columnas. ¡¡¡VERIFICA ESTOS ÍNDICES CON TU CSV!!!
  const int idxId = 0;
  const int idxEan = 1;
  const int idxNombreProducto = 2;
  const int idxVidaUtil = 3;
  const int idxRazonSocial = 4;
  const int idxTemperatura = 5;
  const int idxSeccion = 6;
  const int idxIdSeccion = 7;
  const int idxSap = 8;
  const int idxCalorias = 9;
  const int idxGrasasSaturadas = 10;
  const int idxAzucares = 11;
  const int idxSodio = 12;
  const int idxAlmacenamiento = 13;
  const int idxRetiroAnticipado = 14;
  const int idxRetiroEspecial = 15;
  const int idxDiasImportado = 16;
  const int idxToleranciaEspecial = 17;
  const int idxRetiroZonaJumbo = 18;
  const int idxRetiroZonaSIsabel = 19;
  const int idxRetiroAnticipadoSIsabel = 20;
  const int idxDiasImportadoSIsabel = 21;
  const int idxToleranciaEspecialSIsabel = 22;
  const int idxRetiroZonaSpid = 23;
  const int idxRetiroAnticipadoSpid = 24;
  const int idxCreado = 25;
  const int idxCreadoPor = 26;
  const int idxModificadoPor = 27;
  const int idxModificado = 28;
  const int idxRetiroAnticipadoJumbo = 29;
  const int idxRetiroEspecialJumbo = 30;
  const int idxDiasImportadoJumbo = 31;
  const int idxToleranciaEspecialJumbo = 32;
  const int idxRetiroEspecialSIsabel = 33;
  // Si tu CSV tiene 35 columnas, el último índice sería 34. Ajusta según necesidad.
  // const int idxOtraColumna = 34;


  for (int i = 1; i < csvTable.length; i++) {
    final row = csvTable[i];

    if (i < 6) { // Imprime las primeras 5 filas de datos para depuración
      print('Isolate: Procesando Fila CSV ${i + 1}: $row');
    }

    String? eanValueFromCsv;
    if (row.length > idxEan && row[idxEan] != null) {
      eanValueFromCsv = row[idxEan].toString().trim();
    }

    if (eanValueFromCsv == null || eanValueFromCsv.isEmpty) {
      if (i < 6 || i == csvTable.length -1 ) print('Isolate: Fila ${i + 1} ignorada. EAN faltante o vacío.');
      continue;
    }

    try {
      // --- INICIO DEL BLOQUE DE MAPEO ---
      final product = ProductsCompanion(
        originalId: drift.Value(_parseIntOrNull(row, idxId)),
        ean: drift.Value(eanValueFromCsv), // Usamos la variable ya trimeada
        name: drift.Value(_parseStringOrNull(row, idxNombreProducto).value ?? 'Nombre no disponible'),
        shelfLifeDays: drift.Value(_parseIntOrNull(row, idxVidaUtil)),
        provider: _parseStringOrNull(row, idxRazonSocial),
        temperature: _parseStringOrNull(row, idxTemperatura),
        sectionName: _parseStringOrNull(row, idxSeccion),
        sectionIdCsv: _parseStringOrNull(row, idxIdSeccion),
        sapCode: _parseStringOrNull(row, idxSap),

        highInCaloriesFlag: drift.Value(_parseBoolFromCsvFlag(row, idxCalorias)),
        caloriesCsvValue: _parseStringOrNull(row, idxCalorias),
        highInSaturatedFat: drift.Value(_parseBoolFromCsvFlag(row, idxGrasasSaturadas)),
        highInSugar: drift.Value(_parseBoolFromCsvFlag(row, idxAzucares)),
        highInSodium: drift.Value(_parseBoolFromCsvFlag(row, idxSodio)),

        storageType: _parseStringOrNull(row, idxAlmacenamiento),

        earlyWithdrawalFactor: _parseTextFromNumericWithComma(row, idxRetiroAnticipado),
        specialWithdrawalCsv: _parseStringOrNull(row, idxRetiroEspecial),
        importedDaysCsv: _parseStringOrNull(row, idxDiasImportado),
        specialToleranceCsv: _parseStringOrNull(row, idxToleranciaEspecial),

        retiroPorZonaJumbo: _parseStringOrNull(row, idxRetiroZonaJumbo),
        retiroAnticipadoJumbo: _parseTextFromNumericWithComma(row, idxRetiroAnticipadoJumbo),
        retiroEspecialJumbo: _parseStringOrNull(row, idxRetiroEspecialJumbo),
        diasImportadoJumbo: _parseStringOrNull(row, idxDiasImportadoJumbo),
        toleranciaEspecialJumbo: _parseStringOrNull(row, idxToleranciaEspecialJumbo),

        retiroPorZonaSIsabel: _parseStringOrNull(row, idxRetiroZonaSIsabel),
        retiroAnticipadoSIsabel: _parseTextFromNumericWithComma(row, idxRetiroAnticipadoSIsabel),
        diasImportadoSIsabel: _parseStringOrNull(row, idxDiasImportadoSIsabel),
        toleranciaEspecialSIsabel: _parseStringOrNull(row, idxToleranciaEspecialSIsabel),
        retiroEspecialSIsabelCsv: _parseStringOrNull(row, idxRetiroEspecialSIsabel),

        retiroPorZonaSpid: _parseStringOrNull(row, idxRetiroZonaSpid),
        retiroAnticipadoSpid: _parseTextFromNumericWithComma(row, idxRetiroAnticipadoSpid),

        createdInCsvAt: _parseStringOrNull(row, idxCreado),
        createdInCsvBy: _parseStringOrNull(row, idxCreadoPor),
        modifiedInCsvBy: _parseStringOrNull(row, idxModificadoPor),
        modifiedInCsvAt: _parseStringOrNull(row, idxModificado),
      );
      // --- FIN DEL BLOQUE DE MAPEO ---
      productsToInsert.add(product);
      if (i < 6) print('Isolate: Fila ${i + 1} convertida a ProductCompanion para EAN: ${product.ean.value}');
    } catch (e, s) {
      // Solo imprime errores detallados para las primeras filas y la última para no saturar
      if (i < 6 || i == csvTable.length - 1) {
        print('Isolate: Error GRAVE procesando fila ${i+1} para EAN $eanValueFromCsv: $e.');
        print('Isolate: Fila de datos con error: $row');
        print('Isolate: Stacktrace para fila con error: $s');
      } else if (i == 6) {
        print('Isolate: (Omitiendo logs de error detallados para filas subsiguientes para evitar spam en consola. Revise la última fila para errores.)');
      }
    }
  }
  print('Isolate: Parseo de CSV completado. ${productsToInsert.length} productos listos para insertar.');
  return productsToInsert;
}

class DataImportService {
  final AppDatabase _db;
  DataImportService(this._db);
  final ValueNotifier<double?> importProgressNotifier = ValueNotifier<double?>(null);

  Future<void> importProductsFromCsvIfNeeded() async {
    try {
      final productCount = await (_db.select(_db.products)..limit(1)).getSingleOrNull();
      if (productCount != null) {
        print('DataImportService: La tabla Products ya tiene datos. No se importará.');
        importProgressNotifier.value = 1.0;
        return;
      }

      print('DataImportService: Iniciando importación de productos desde PRODUCTOS.csv...');
      importProgressNotifier.value = 0.0;

      final String csvString = await rootBundle.loadString('assets/data/PRODUCTOS.csv');
      if (csvString.isEmpty) {
        print('DataImportService: El archivo CSV está vacío.');
        importProgressNotifier.value = -1.0;
        return;
      }
      print('DataImportService: Archivo CSV cargado (${(csvString.length / 1024 / 1024).toStringAsFixed(2)} MB).');
      importProgressNotifier.value = 0.1;

      print('DataImportService: Enviando CSV a Isolate para parseo...');
      final List<ProductsCompanion> productsToInsert = await compute(_parseCsvInBackground, csvString);

      // Aquí podrías implementar una lógica de progreso más granular si el parseo es muy largo
      // pero por ahora, marcamos como 0.8 después del parseo.
      importProgressNotifier.value = 0.8;

      if (productsToInsert.isEmpty) {
        print('DataImportService: No se parsearon productos válidos del CSV.');
        importProgressNotifier.value = 1.0;
        return;
      }

      print('DataImportService: Insertando ${productsToInsert.length} productos en la BD...');
      await _db.batch((batch) {
        batch.insertAll(_db.products, productsToInsert, mode: drift.InsertMode.insertOrReplace);
      });

      importProgressNotifier.value = 1.0;
      print('DataImportService: ${productsToInsert.length} productos importados/reemplazados exitosamente.');

    } catch (e, s) {
      print('DataImportService: Error catastrófico durante la importación: $e');
      print('Stack trace: $s');
      if (importProgressNotifier.value != -1.0) {
        importProgressNotifier.value = -1.0;
      }
    }
  }
}