// lib/core/database/app_db.dart

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart'; // Para móvil (iOS/Android)
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

// Esta directiva 'part' es crucial. Drift generará código en 'app_db.g.dart'.
// Si ves un error aquí, es porque el archivo aún no ha sido generado.
part 'app_db.g.dart';

// --- Definición de la tabla Products (Alineada con PRODUCTOS.csv) ---
@DataClassName('Product') // Nombre de la clase de datos que se generará
class Products extends Table {
  // Mapeo de columnas del CSV
  IntColumn get originalId => integer().named('original_id').nullable()(); // Desde la columna 'ID' del CSV
  TextColumn get ean => text().named('ean')(); // PK, desde 'EAN'
  TextColumn get name => text().named('nombre_producto')(); // Desde 'NOMBRE PRODUCTO'
  IntColumn get shelfLifeDays => integer().named('vida_util').nullable()(); // Desde 'VIDA UTIL'
  TextColumn get provider => text().named('razon_social').nullable()(); // Desde 'RASON_SOCIAL'
  TextColumn get temperature => text().named('temperatura').nullable()(); // Desde 'TEMPERATURA'
  TextColumn get sectionName => text().named('seccion_nombre').nullable()(); // Desde 'SECCION'
  TextColumn get sectionIdCsv => text().named('id_seccion_csv').nullable()(); // Desde 'ID SECCIÓN' (como texto por si acaso)
  TextColumn get sapCode => text().named('sap_code').nullable()(); // Desde 'SAP'

  // Para los sellos (columnas booleanas en la BD)
  // La lógica para convertir "NO" del CSV a false se hará durante la importación.
  BoolColumn get highInSaturatedFat => boolean().named('alto_en_grasas_saturadas').withDefault(const Constant(false))();
  BoolColumn get highInSugar => boolean().named('alto_en_azucares').withDefault(const Constant(false))();
  BoolColumn get highInSodium => boolean().named('alto_en_sodio').withDefault(const Constant(false))();
  // Para 'CALORIAS' del CSV: si 'NO' significa "no es alto en calorías",
  // podríamos tener un 'alto_en_calorias'. Si 'CALORIAS' es un valor numérico,
  // necesitaríamos otra columna o cambiar el tipo. Por ahora, asumimos que es un flag.
  BoolColumn get highInCaloriesFlag => boolean().named('alto_en_calorias_flag').withDefault(const Constant(false))();
  // Si también necesitas guardar el valor numérico de calorías del CSV:
  TextColumn get caloriesCsvValue => text().named('calorias_csv_valor').nullable()(); // Para la columna 'CALORIAS' del CSV

  TextColumn get storageType => text().named('almacenamiento').nullable()(); // Desde 'ALMACENAMIENTO'

  // Campos de retiro y tolerancia del CSV (como texto para flexibilidad inicial)
  TextColumn get earlyWithdrawalFactor => text().named('retiro_anticipado_csv').nullable()();
  TextColumn get specialWithdrawalCsv => text().named('retiro_especial_csv').nullable()();
  TextColumn get importedDaysCsv => text().named('dias_importado_csv').nullable()();
  TextColumn get specialToleranceCsv => text().named('tolerancia_especial_csv').nullable()();

  // Campos específicos de formato/tienda del CSV (como texto)
  TextColumn get retiroPorZonaJumbo => text().named('retiro_zona_jumbo_csv').nullable()();
  TextColumn get retiroAnticipadoJumbo => text().named('retiro_anticipado_jumbo_csv').nullable()();
  TextColumn get retiroEspecialJumbo => text().named('retiro_especial_jumbo_csv').nullable()();
  TextColumn get diasImportadoJumbo => text().named('dias_importado_jumbo_csv').nullable()();
  TextColumn get toleranciaEspecialJumbo => text().named('tolerancia_especial_jumbo_csv').nullable()();

  TextColumn get retiroPorZonaSIsabel => text().named('retiro_zona_sisabel_csv').nullable()();
  TextColumn get retiroAnticipadoSIsabel => text().named('retiro_anticipado_sisabel_csv').nullable()();
  TextColumn get retiroEspecialSIsabelCsv => text().named('retiro_especial_sisabel_csv').nullable()();
  TextColumn get diasImportadoSIsabel => text().named('dias_importado_sisabel_csv').nullable()();
  TextColumn get toleranciaEspecialSIsabel => text().named('tolerancia_especial_sisabel_csv').nullable()();

  TextColumn get retiroPorZonaSpid => text().named('retiro_zona_spid_csv').nullable()();
  TextColumn get retiroAnticipadoSpid => text().named('retiro_anticipado_spid_csv').nullable()();

  // Campos de auditoría del CSV (como texto, se parsearán fechas al importar)
  TextColumn get createdInCsvAt => text().named('creado_csv_fecha').nullable()(); // Desde 'Creado'
  TextColumn get createdInCsvBy => text().named('creado_csv_por').nullable()(); // Desde 'Creado por'
  TextColumn get modifiedInCsvBy => text().named('modificado_csv_por').nullable()(); // Desde 'Modificado por'
  TextColumn get modifiedInCsvAt => text().named('modificado_csv_fecha').nullable()(); // Desde 'Modificado'

  // Columnas de control interno de la app (de tu especificación original)
  BoolColumn get isBulkItem => boolean().named('is_bulk_item_app').withDefault(const Constant(false))();
  DateTimeColumn get appCreatedAt => dateTime().named('app_created_at').withDefault(currentDateAndTime)();
  DateTimeColumn get appUpdatedAt => dateTime().named('app_updated_at').withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {ean}; // El EAN sigue siendo la clave primaria
}

// --- Definición de la tabla QualityActions (como la tenías) ---
@DataClassName('QualityAction')
class QualityActions extends Table {
  IntColumn get id => integer().named('id').autoIncrement()();
  TextColumn get ean => text().named('ean').references(Products, #ean)();
  TextColumn get actionType => text().named('action_type')();
  TextColumn get expiryDate => text().named('expiry_date')();
  TextColumn get calculatedLimitDate => text().named('calculated_limit_date').nullable()();
  TextColumn get reason => text().named('reason')();
  IntColumn get sectionIdApp => integer().named('section_id_app').nullable()(); // ID de sección numérico para la app
  TextColumn get userId => text().named('user_id')();
  TextColumn get storeCode => text().named('store_code')();
  DateTimeColumn get createdAt => dateTime().named('created_at').withDefault(currentDateAndTime)();
  BoolColumn get synced => boolean().named('synced').withDefault(const Constant(false))();
}

// --- Clase principal de la base de datos ---
@DriftDatabase(tables: [Products, QualityActions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // Incrementa este número si cambias la estructura de las tablas en el futuro
  // para manejar migraciones.
  @override
  int get schemaVersion => 1;

  // --- Métodos CRUD para Products ---
  Future<List<Product>> getAllProducts() => select(products).get();
  Future<Product?> getProductByEan(String eanValue) {
    return (select(products)..where((tbl) => tbl.ean.equals(eanValue))).getSingleOrNull();
  }
  Future<int> insertProduct(ProductsCompanion product) => into(products).insert(product);
  Future<bool> updateProduct(ProductsCompanion product) => update(products).replace(product);
  Future<int> deleteProductByEan(String eanValue) {
    return (delete(products)..where((tbl) => tbl.ean.equals(eanValue))).go();
  }
  Future<int> deleteAllProducts() => delete(products).go(); // Útil para pruebas o recarga masiva

  // --- Métodos CRUD para QualityActions ---
  Future<List<QualityAction>> getAllQualityActions() => select(qualityActions).get();
  Future<List<QualityAction>> getQualityActionsByEan(String eanValue) {
    return (select(qualityActions)..where((tbl) => tbl.ean.equals(eanValue))).get();
  }
  Future<int> insertQualityAction(QualityActionsCompanion action) => into(qualityActions).insert(action);
  Future<bool> updateQualityAction(QualityActionsCompanion action) => update(qualityActions).replace(action);
  Future<int> deleteQualityAction(int idValue) {
    return (delete(qualityActions)..where((tbl) => tbl.id.equals(idValue))).go();
  }
  Future<int> deleteAllQualityActions() => delete(qualityActions).go();
}

// --- Función para abrir la conexión a la base de datos ---
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    // Usamos un nombre de archivo específico para nuestra base de datos
    final file = File(p.join(dbFolder.path, 'quality_scan_pro_db.sqlite'));
    print('Ruta de la base de datos: ${file.path}');
    return NativeDatabase.createInBackground(file);
  });
}