// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _originalIdMeta =
      const VerificationMeta('originalId');
  @override
  late final GeneratedColumn<int> originalId = GeneratedColumn<int>(
      'original_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _eanMeta = const VerificationMeta('ean');
  @override
  late final GeneratedColumn<String> ean = GeneratedColumn<String>(
      'ean', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'nombre_producto', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shelfLifeDaysMeta =
      const VerificationMeta('shelfLifeDays');
  @override
  late final GeneratedColumn<int> shelfLifeDays = GeneratedColumn<int>(
      'vida_util', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _providerMeta =
      const VerificationMeta('provider');
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
      'razon_social', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _temperatureMeta =
      const VerificationMeta('temperature');
  @override
  late final GeneratedColumn<String> temperature = GeneratedColumn<String>(
      'temperatura', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sectionNameMeta =
      const VerificationMeta('sectionName');
  @override
  late final GeneratedColumn<String> sectionName = GeneratedColumn<String>(
      'seccion_nombre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sectionIdCsvMeta =
      const VerificationMeta('sectionIdCsv');
  @override
  late final GeneratedColumn<String> sectionIdCsv = GeneratedColumn<String>(
      'id_seccion_csv', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sapCodeMeta =
      const VerificationMeta('sapCode');
  @override
  late final GeneratedColumn<String> sapCode = GeneratedColumn<String>(
      'sap_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _highInSaturatedFatMeta =
      const VerificationMeta('highInSaturatedFat');
  @override
  late final GeneratedColumn<bool> highInSaturatedFat = GeneratedColumn<bool>(
      'alto_en_grasas_saturadas', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("alto_en_grasas_saturadas" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _highInSugarMeta =
      const VerificationMeta('highInSugar');
  @override
  late final GeneratedColumn<bool> highInSugar = GeneratedColumn<bool>(
      'alto_en_azucares', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("alto_en_azucares" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _highInSodiumMeta =
      const VerificationMeta('highInSodium');
  @override
  late final GeneratedColumn<bool> highInSodium = GeneratedColumn<bool>(
      'alto_en_sodio', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("alto_en_sodio" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _highInCaloriesFlagMeta =
      const VerificationMeta('highInCaloriesFlag');
  @override
  late final GeneratedColumn<bool> highInCaloriesFlag = GeneratedColumn<bool>(
      'alto_en_calorias_flag', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("alto_en_calorias_flag" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _caloriesCsvValueMeta =
      const VerificationMeta('caloriesCsvValue');
  @override
  late final GeneratedColumn<String> caloriesCsvValue = GeneratedColumn<String>(
      'calorias_csv_valor', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _storageTypeMeta =
      const VerificationMeta('storageType');
  @override
  late final GeneratedColumn<String> storageType = GeneratedColumn<String>(
      'almacenamiento', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _earlyWithdrawalFactorMeta =
      const VerificationMeta('earlyWithdrawalFactor');
  @override
  late final GeneratedColumn<String> earlyWithdrawalFactor =
      GeneratedColumn<String>('retiro_anticipado_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specialWithdrawalCsvMeta =
      const VerificationMeta('specialWithdrawalCsv');
  @override
  late final GeneratedColumn<String> specialWithdrawalCsv =
      GeneratedColumn<String>('retiro_especial_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _importedDaysCsvMeta =
      const VerificationMeta('importedDaysCsv');
  @override
  late final GeneratedColumn<String> importedDaysCsv = GeneratedColumn<String>(
      'dias_importado_csv', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specialToleranceCsvMeta =
      const VerificationMeta('specialToleranceCsv');
  @override
  late final GeneratedColumn<String> specialToleranceCsv =
      GeneratedColumn<String>('tolerancia_especial_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroPorZonaJumboMeta =
      const VerificationMeta('retiroPorZonaJumbo');
  @override
  late final GeneratedColumn<String> retiroPorZonaJumbo =
      GeneratedColumn<String>('retiro_zona_jumbo_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroAnticipadoJumboMeta =
      const VerificationMeta('retiroAnticipadoJumbo');
  @override
  late final GeneratedColumn<String> retiroAnticipadoJumbo =
      GeneratedColumn<String>('retiro_anticipado_jumbo_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroEspecialJumboMeta =
      const VerificationMeta('retiroEspecialJumbo');
  @override
  late final GeneratedColumn<String> retiroEspecialJumbo =
      GeneratedColumn<String>('retiro_especial_jumbo_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _diasImportadoJumboMeta =
      const VerificationMeta('diasImportadoJumbo');
  @override
  late final GeneratedColumn<String> diasImportadoJumbo =
      GeneratedColumn<String>('dias_importado_jumbo_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _toleranciaEspecialJumboMeta =
      const VerificationMeta('toleranciaEspecialJumbo');
  @override
  late final GeneratedColumn<String> toleranciaEspecialJumbo =
      GeneratedColumn<String>(
          'tolerancia_especial_jumbo_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroPorZonaSIsabelMeta =
      const VerificationMeta('retiroPorZonaSIsabel');
  @override
  late final GeneratedColumn<String> retiroPorZonaSIsabel =
      GeneratedColumn<String>('retiro_zona_sisabel_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroAnticipadoSIsabelMeta =
      const VerificationMeta('retiroAnticipadoSIsabel');
  @override
  late final GeneratedColumn<String> retiroAnticipadoSIsabel =
      GeneratedColumn<String>(
          'retiro_anticipado_sisabel_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroEspecialSIsabelCsvMeta =
      const VerificationMeta('retiroEspecialSIsabelCsv');
  @override
  late final GeneratedColumn<String> retiroEspecialSIsabelCsv =
      GeneratedColumn<String>('retiro_especial_sisabel_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _diasImportadoSIsabelMeta =
      const VerificationMeta('diasImportadoSIsabel');
  @override
  late final GeneratedColumn<String> diasImportadoSIsabel =
      GeneratedColumn<String>('dias_importado_sisabel_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _toleranciaEspecialSIsabelMeta =
      const VerificationMeta('toleranciaEspecialSIsabel');
  @override
  late final GeneratedColumn<String> toleranciaEspecialSIsabel =
      GeneratedColumn<String>(
          'tolerancia_especial_sisabel_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroPorZonaSpidMeta =
      const VerificationMeta('retiroPorZonaSpid');
  @override
  late final GeneratedColumn<String> retiroPorZonaSpid =
      GeneratedColumn<String>('retiro_zona_spid_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retiroAnticipadoSpidMeta =
      const VerificationMeta('retiroAnticipadoSpid');
  @override
  late final GeneratedColumn<String> retiroAnticipadoSpid =
      GeneratedColumn<String>('retiro_anticipado_spid_csv', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdInCsvAtMeta =
      const VerificationMeta('createdInCsvAt');
  @override
  late final GeneratedColumn<String> createdInCsvAt = GeneratedColumn<String>(
      'creado_csv_fecha', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdInCsvByMeta =
      const VerificationMeta('createdInCsvBy');
  @override
  late final GeneratedColumn<String> createdInCsvBy = GeneratedColumn<String>(
      'creado_csv_por', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifiedInCsvByMeta =
      const VerificationMeta('modifiedInCsvBy');
  @override
  late final GeneratedColumn<String> modifiedInCsvBy = GeneratedColumn<String>(
      'modificado_csv_por', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifiedInCsvAtMeta =
      const VerificationMeta('modifiedInCsvAt');
  @override
  late final GeneratedColumn<String> modifiedInCsvAt = GeneratedColumn<String>(
      'modificado_csv_fecha', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isBulkItemMeta =
      const VerificationMeta('isBulkItem');
  @override
  late final GeneratedColumn<bool> isBulkItem = GeneratedColumn<bool>(
      'is_bulk_item_app', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_bulk_item_app" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _appCreatedAtMeta =
      const VerificationMeta('appCreatedAt');
  @override
  late final GeneratedColumn<DateTime> appCreatedAt = GeneratedColumn<DateTime>(
      'app_created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _appUpdatedAtMeta =
      const VerificationMeta('appUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> appUpdatedAt = GeneratedColumn<DateTime>(
      'app_updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        originalId,
        ean,
        name,
        shelfLifeDays,
        provider,
        temperature,
        sectionName,
        sectionIdCsv,
        sapCode,
        highInSaturatedFat,
        highInSugar,
        highInSodium,
        highInCaloriesFlag,
        caloriesCsvValue,
        storageType,
        earlyWithdrawalFactor,
        specialWithdrawalCsv,
        importedDaysCsv,
        specialToleranceCsv,
        retiroPorZonaJumbo,
        retiroAnticipadoJumbo,
        retiroEspecialJumbo,
        diasImportadoJumbo,
        toleranciaEspecialJumbo,
        retiroPorZonaSIsabel,
        retiroAnticipadoSIsabel,
        retiroEspecialSIsabelCsv,
        diasImportadoSIsabel,
        toleranciaEspecialSIsabel,
        retiroPorZonaSpid,
        retiroAnticipadoSpid,
        createdInCsvAt,
        createdInCsvBy,
        modifiedInCsvBy,
        modifiedInCsvAt,
        isBulkItem,
        appCreatedAt,
        appUpdatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('original_id')) {
      context.handle(
          _originalIdMeta,
          originalId.isAcceptableOrUnknown(
              data['original_id']!, _originalIdMeta));
    }
    if (data.containsKey('ean')) {
      context.handle(
          _eanMeta, ean.isAcceptableOrUnknown(data['ean']!, _eanMeta));
    } else if (isInserting) {
      context.missing(_eanMeta);
    }
    if (data.containsKey('nombre_producto')) {
      context.handle(_nameMeta,
          name.isAcceptableOrUnknown(data['nombre_producto']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('vida_util')) {
      context.handle(
          _shelfLifeDaysMeta,
          shelfLifeDays.isAcceptableOrUnknown(
              data['vida_util']!, _shelfLifeDaysMeta));
    }
    if (data.containsKey('razon_social')) {
      context.handle(_providerMeta,
          provider.isAcceptableOrUnknown(data['razon_social']!, _providerMeta));
    }
    if (data.containsKey('temperatura')) {
      context.handle(
          _temperatureMeta,
          temperature.isAcceptableOrUnknown(
              data['temperatura']!, _temperatureMeta));
    }
    if (data.containsKey('seccion_nombre')) {
      context.handle(
          _sectionNameMeta,
          sectionName.isAcceptableOrUnknown(
              data['seccion_nombre']!, _sectionNameMeta));
    }
    if (data.containsKey('id_seccion_csv')) {
      context.handle(
          _sectionIdCsvMeta,
          sectionIdCsv.isAcceptableOrUnknown(
              data['id_seccion_csv']!, _sectionIdCsvMeta));
    }
    if (data.containsKey('sap_code')) {
      context.handle(_sapCodeMeta,
          sapCode.isAcceptableOrUnknown(data['sap_code']!, _sapCodeMeta));
    }
    if (data.containsKey('alto_en_grasas_saturadas')) {
      context.handle(
          _highInSaturatedFatMeta,
          highInSaturatedFat.isAcceptableOrUnknown(
              data['alto_en_grasas_saturadas']!, _highInSaturatedFatMeta));
    }
    if (data.containsKey('alto_en_azucares')) {
      context.handle(
          _highInSugarMeta,
          highInSugar.isAcceptableOrUnknown(
              data['alto_en_azucares']!, _highInSugarMeta));
    }
    if (data.containsKey('alto_en_sodio')) {
      context.handle(
          _highInSodiumMeta,
          highInSodium.isAcceptableOrUnknown(
              data['alto_en_sodio']!, _highInSodiumMeta));
    }
    if (data.containsKey('alto_en_calorias_flag')) {
      context.handle(
          _highInCaloriesFlagMeta,
          highInCaloriesFlag.isAcceptableOrUnknown(
              data['alto_en_calorias_flag']!, _highInCaloriesFlagMeta));
    }
    if (data.containsKey('calorias_csv_valor')) {
      context.handle(
          _caloriesCsvValueMeta,
          caloriesCsvValue.isAcceptableOrUnknown(
              data['calorias_csv_valor']!, _caloriesCsvValueMeta));
    }
    if (data.containsKey('almacenamiento')) {
      context.handle(
          _storageTypeMeta,
          storageType.isAcceptableOrUnknown(
              data['almacenamiento']!, _storageTypeMeta));
    }
    if (data.containsKey('retiro_anticipado_csv')) {
      context.handle(
          _earlyWithdrawalFactorMeta,
          earlyWithdrawalFactor.isAcceptableOrUnknown(
              data['retiro_anticipado_csv']!, _earlyWithdrawalFactorMeta));
    }
    if (data.containsKey('retiro_especial_csv')) {
      context.handle(
          _specialWithdrawalCsvMeta,
          specialWithdrawalCsv.isAcceptableOrUnknown(
              data['retiro_especial_csv']!, _specialWithdrawalCsvMeta));
    }
    if (data.containsKey('dias_importado_csv')) {
      context.handle(
          _importedDaysCsvMeta,
          importedDaysCsv.isAcceptableOrUnknown(
              data['dias_importado_csv']!, _importedDaysCsvMeta));
    }
    if (data.containsKey('tolerancia_especial_csv')) {
      context.handle(
          _specialToleranceCsvMeta,
          specialToleranceCsv.isAcceptableOrUnknown(
              data['tolerancia_especial_csv']!, _specialToleranceCsvMeta));
    }
    if (data.containsKey('retiro_zona_jumbo_csv')) {
      context.handle(
          _retiroPorZonaJumboMeta,
          retiroPorZonaJumbo.isAcceptableOrUnknown(
              data['retiro_zona_jumbo_csv']!, _retiroPorZonaJumboMeta));
    }
    if (data.containsKey('retiro_anticipado_jumbo_csv')) {
      context.handle(
          _retiroAnticipadoJumboMeta,
          retiroAnticipadoJumbo.isAcceptableOrUnknown(
              data['retiro_anticipado_jumbo_csv']!,
              _retiroAnticipadoJumboMeta));
    }
    if (data.containsKey('retiro_especial_jumbo_csv')) {
      context.handle(
          _retiroEspecialJumboMeta,
          retiroEspecialJumbo.isAcceptableOrUnknown(
              data['retiro_especial_jumbo_csv']!, _retiroEspecialJumboMeta));
    }
    if (data.containsKey('dias_importado_jumbo_csv')) {
      context.handle(
          _diasImportadoJumboMeta,
          diasImportadoJumbo.isAcceptableOrUnknown(
              data['dias_importado_jumbo_csv']!, _diasImportadoJumboMeta));
    }
    if (data.containsKey('tolerancia_especial_jumbo_csv')) {
      context.handle(
          _toleranciaEspecialJumboMeta,
          toleranciaEspecialJumbo.isAcceptableOrUnknown(
              data['tolerancia_especial_jumbo_csv']!,
              _toleranciaEspecialJumboMeta));
    }
    if (data.containsKey('retiro_zona_sisabel_csv')) {
      context.handle(
          _retiroPorZonaSIsabelMeta,
          retiroPorZonaSIsabel.isAcceptableOrUnknown(
              data['retiro_zona_sisabel_csv']!, _retiroPorZonaSIsabelMeta));
    }
    if (data.containsKey('retiro_anticipado_sisabel_csv')) {
      context.handle(
          _retiroAnticipadoSIsabelMeta,
          retiroAnticipadoSIsabel.isAcceptableOrUnknown(
              data['retiro_anticipado_sisabel_csv']!,
              _retiroAnticipadoSIsabelMeta));
    }
    if (data.containsKey('retiro_especial_sisabel_csv')) {
      context.handle(
          _retiroEspecialSIsabelCsvMeta,
          retiroEspecialSIsabelCsv.isAcceptableOrUnknown(
              data['retiro_especial_sisabel_csv']!,
              _retiroEspecialSIsabelCsvMeta));
    }
    if (data.containsKey('dias_importado_sisabel_csv')) {
      context.handle(
          _diasImportadoSIsabelMeta,
          diasImportadoSIsabel.isAcceptableOrUnknown(
              data['dias_importado_sisabel_csv']!, _diasImportadoSIsabelMeta));
    }
    if (data.containsKey('tolerancia_especial_sisabel_csv')) {
      context.handle(
          _toleranciaEspecialSIsabelMeta,
          toleranciaEspecialSIsabel.isAcceptableOrUnknown(
              data['tolerancia_especial_sisabel_csv']!,
              _toleranciaEspecialSIsabelMeta));
    }
    if (data.containsKey('retiro_zona_spid_csv')) {
      context.handle(
          _retiroPorZonaSpidMeta,
          retiroPorZonaSpid.isAcceptableOrUnknown(
              data['retiro_zona_spid_csv']!, _retiroPorZonaSpidMeta));
    }
    if (data.containsKey('retiro_anticipado_spid_csv')) {
      context.handle(
          _retiroAnticipadoSpidMeta,
          retiroAnticipadoSpid.isAcceptableOrUnknown(
              data['retiro_anticipado_spid_csv']!, _retiroAnticipadoSpidMeta));
    }
    if (data.containsKey('creado_csv_fecha')) {
      context.handle(
          _createdInCsvAtMeta,
          createdInCsvAt.isAcceptableOrUnknown(
              data['creado_csv_fecha']!, _createdInCsvAtMeta));
    }
    if (data.containsKey('creado_csv_por')) {
      context.handle(
          _createdInCsvByMeta,
          createdInCsvBy.isAcceptableOrUnknown(
              data['creado_csv_por']!, _createdInCsvByMeta));
    }
    if (data.containsKey('modificado_csv_por')) {
      context.handle(
          _modifiedInCsvByMeta,
          modifiedInCsvBy.isAcceptableOrUnknown(
              data['modificado_csv_por']!, _modifiedInCsvByMeta));
    }
    if (data.containsKey('modificado_csv_fecha')) {
      context.handle(
          _modifiedInCsvAtMeta,
          modifiedInCsvAt.isAcceptableOrUnknown(
              data['modificado_csv_fecha']!, _modifiedInCsvAtMeta));
    }
    if (data.containsKey('is_bulk_item_app')) {
      context.handle(
          _isBulkItemMeta,
          isBulkItem.isAcceptableOrUnknown(
              data['is_bulk_item_app']!, _isBulkItemMeta));
    }
    if (data.containsKey('app_created_at')) {
      context.handle(
          _appCreatedAtMeta,
          appCreatedAt.isAcceptableOrUnknown(
              data['app_created_at']!, _appCreatedAtMeta));
    }
    if (data.containsKey('app_updated_at')) {
      context.handle(
          _appUpdatedAtMeta,
          appUpdatedAt.isAcceptableOrUnknown(
              data['app_updated_at']!, _appUpdatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ean};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      originalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}original_id']),
      ean: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ean'])!,
      name: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nombre_producto'])!,
      shelfLifeDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vida_util']),
      provider: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}razon_social']),
      temperature: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}temperatura']),
      sectionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}seccion_nombre']),
      sectionIdCsv: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_seccion_csv']),
      sapCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sap_code']),
      highInSaturatedFat: attachedDatabase.typeMapping.read(DriftSqlType.bool,
          data['${effectivePrefix}alto_en_grasas_saturadas'])!,
      highInSugar: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}alto_en_azucares'])!,
      highInSodium: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}alto_en_sodio'])!,
      highInCaloriesFlag: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}alto_en_calorias_flag'])!,
      caloriesCsvValue: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}calorias_csv_valor']),
      storageType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}almacenamiento']),
      earlyWithdrawalFactor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}retiro_anticipado_csv']),
      specialWithdrawalCsv: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}retiro_especial_csv']),
      importedDaysCsv: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}dias_importado_csv']),
      specialToleranceCsv: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tolerancia_especial_csv']),
      retiroPorZonaJumbo: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}retiro_zona_jumbo_csv']),
      retiroAnticipadoJumbo: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_anticipado_jumbo_csv']),
      retiroEspecialJumbo: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_especial_jumbo_csv']),
      diasImportadoJumbo: attachedDatabase.typeMapping.read(DriftSqlType.string,
          data['${effectivePrefix}dias_importado_jumbo_csv']),
      toleranciaEspecialJumbo: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tolerancia_especial_jumbo_csv']),
      retiroPorZonaSIsabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_zona_sisabel_csv']),
      retiroAnticipadoSIsabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_anticipado_sisabel_csv']),
      retiroEspecialSIsabelCsv: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_especial_sisabel_csv']),
      diasImportadoSIsabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}dias_importado_sisabel_csv']),
      toleranciaEspecialSIsabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tolerancia_especial_sisabel_csv']),
      retiroPorZonaSpid: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}retiro_zona_spid_csv']),
      retiroAnticipadoSpid: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}retiro_anticipado_spid_csv']),
      createdInCsvAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}creado_csv_fecha']),
      createdInCsvBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}creado_csv_por']),
      modifiedInCsvBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}modificado_csv_por']),
      modifiedInCsvAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}modificado_csv_fecha']),
      isBulkItem: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_bulk_item_app'])!,
      appCreatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}app_created_at'])!,
      appUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}app_updated_at'])!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int? originalId;
  final String ean;
  final String name;
  final int? shelfLifeDays;
  final String? provider;
  final String? temperature;
  final String? sectionName;
  final String? sectionIdCsv;
  final String? sapCode;
  final bool highInSaturatedFat;
  final bool highInSugar;
  final bool highInSodium;
  final bool highInCaloriesFlag;
  final String? caloriesCsvValue;
  final String? storageType;
  final String? earlyWithdrawalFactor;
  final String? specialWithdrawalCsv;
  final String? importedDaysCsv;
  final String? specialToleranceCsv;
  final String? retiroPorZonaJumbo;
  final String? retiroAnticipadoJumbo;
  final String? retiroEspecialJumbo;
  final String? diasImportadoJumbo;
  final String? toleranciaEspecialJumbo;
  final String? retiroPorZonaSIsabel;
  final String? retiroAnticipadoSIsabel;
  final String? retiroEspecialSIsabelCsv;
  final String? diasImportadoSIsabel;
  final String? toleranciaEspecialSIsabel;
  final String? retiroPorZonaSpid;
  final String? retiroAnticipadoSpid;
  final String? createdInCsvAt;
  final String? createdInCsvBy;
  final String? modifiedInCsvBy;
  final String? modifiedInCsvAt;
  final bool isBulkItem;
  final DateTime appCreatedAt;
  final DateTime appUpdatedAt;
  const Product(
      {this.originalId,
      required this.ean,
      required this.name,
      this.shelfLifeDays,
      this.provider,
      this.temperature,
      this.sectionName,
      this.sectionIdCsv,
      this.sapCode,
      required this.highInSaturatedFat,
      required this.highInSugar,
      required this.highInSodium,
      required this.highInCaloriesFlag,
      this.caloriesCsvValue,
      this.storageType,
      this.earlyWithdrawalFactor,
      this.specialWithdrawalCsv,
      this.importedDaysCsv,
      this.specialToleranceCsv,
      this.retiroPorZonaJumbo,
      this.retiroAnticipadoJumbo,
      this.retiroEspecialJumbo,
      this.diasImportadoJumbo,
      this.toleranciaEspecialJumbo,
      this.retiroPorZonaSIsabel,
      this.retiroAnticipadoSIsabel,
      this.retiroEspecialSIsabelCsv,
      this.diasImportadoSIsabel,
      this.toleranciaEspecialSIsabel,
      this.retiroPorZonaSpid,
      this.retiroAnticipadoSpid,
      this.createdInCsvAt,
      this.createdInCsvBy,
      this.modifiedInCsvBy,
      this.modifiedInCsvAt,
      required this.isBulkItem,
      required this.appCreatedAt,
      required this.appUpdatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || originalId != null) {
      map['original_id'] = Variable<int>(originalId);
    }
    map['ean'] = Variable<String>(ean);
    map['nombre_producto'] = Variable<String>(name);
    if (!nullToAbsent || shelfLifeDays != null) {
      map['vida_util'] = Variable<int>(shelfLifeDays);
    }
    if (!nullToAbsent || provider != null) {
      map['razon_social'] = Variable<String>(provider);
    }
    if (!nullToAbsent || temperature != null) {
      map['temperatura'] = Variable<String>(temperature);
    }
    if (!nullToAbsent || sectionName != null) {
      map['seccion_nombre'] = Variable<String>(sectionName);
    }
    if (!nullToAbsent || sectionIdCsv != null) {
      map['id_seccion_csv'] = Variable<String>(sectionIdCsv);
    }
    if (!nullToAbsent || sapCode != null) {
      map['sap_code'] = Variable<String>(sapCode);
    }
    map['alto_en_grasas_saturadas'] = Variable<bool>(highInSaturatedFat);
    map['alto_en_azucares'] = Variable<bool>(highInSugar);
    map['alto_en_sodio'] = Variable<bool>(highInSodium);
    map['alto_en_calorias_flag'] = Variable<bool>(highInCaloriesFlag);
    if (!nullToAbsent || caloriesCsvValue != null) {
      map['calorias_csv_valor'] = Variable<String>(caloriesCsvValue);
    }
    if (!nullToAbsent || storageType != null) {
      map['almacenamiento'] = Variable<String>(storageType);
    }
    if (!nullToAbsent || earlyWithdrawalFactor != null) {
      map['retiro_anticipado_csv'] = Variable<String>(earlyWithdrawalFactor);
    }
    if (!nullToAbsent || specialWithdrawalCsv != null) {
      map['retiro_especial_csv'] = Variable<String>(specialWithdrawalCsv);
    }
    if (!nullToAbsent || importedDaysCsv != null) {
      map['dias_importado_csv'] = Variable<String>(importedDaysCsv);
    }
    if (!nullToAbsent || specialToleranceCsv != null) {
      map['tolerancia_especial_csv'] = Variable<String>(specialToleranceCsv);
    }
    if (!nullToAbsent || retiroPorZonaJumbo != null) {
      map['retiro_zona_jumbo_csv'] = Variable<String>(retiroPorZonaJumbo);
    }
    if (!nullToAbsent || retiroAnticipadoJumbo != null) {
      map['retiro_anticipado_jumbo_csv'] =
          Variable<String>(retiroAnticipadoJumbo);
    }
    if (!nullToAbsent || retiroEspecialJumbo != null) {
      map['retiro_especial_jumbo_csv'] = Variable<String>(retiroEspecialJumbo);
    }
    if (!nullToAbsent || diasImportadoJumbo != null) {
      map['dias_importado_jumbo_csv'] = Variable<String>(diasImportadoJumbo);
    }
    if (!nullToAbsent || toleranciaEspecialJumbo != null) {
      map['tolerancia_especial_jumbo_csv'] =
          Variable<String>(toleranciaEspecialJumbo);
    }
    if (!nullToAbsent || retiroPorZonaSIsabel != null) {
      map['retiro_zona_sisabel_csv'] = Variable<String>(retiroPorZonaSIsabel);
    }
    if (!nullToAbsent || retiroAnticipadoSIsabel != null) {
      map['retiro_anticipado_sisabel_csv'] =
          Variable<String>(retiroAnticipadoSIsabel);
    }
    if (!nullToAbsent || retiroEspecialSIsabelCsv != null) {
      map['retiro_especial_sisabel_csv'] =
          Variable<String>(retiroEspecialSIsabelCsv);
    }
    if (!nullToAbsent || diasImportadoSIsabel != null) {
      map['dias_importado_sisabel_csv'] =
          Variable<String>(diasImportadoSIsabel);
    }
    if (!nullToAbsent || toleranciaEspecialSIsabel != null) {
      map['tolerancia_especial_sisabel_csv'] =
          Variable<String>(toleranciaEspecialSIsabel);
    }
    if (!nullToAbsent || retiroPorZonaSpid != null) {
      map['retiro_zona_spid_csv'] = Variable<String>(retiroPorZonaSpid);
    }
    if (!nullToAbsent || retiroAnticipadoSpid != null) {
      map['retiro_anticipado_spid_csv'] =
          Variable<String>(retiroAnticipadoSpid);
    }
    if (!nullToAbsent || createdInCsvAt != null) {
      map['creado_csv_fecha'] = Variable<String>(createdInCsvAt);
    }
    if (!nullToAbsent || createdInCsvBy != null) {
      map['creado_csv_por'] = Variable<String>(createdInCsvBy);
    }
    if (!nullToAbsent || modifiedInCsvBy != null) {
      map['modificado_csv_por'] = Variable<String>(modifiedInCsvBy);
    }
    if (!nullToAbsent || modifiedInCsvAt != null) {
      map['modificado_csv_fecha'] = Variable<String>(modifiedInCsvAt);
    }
    map['is_bulk_item_app'] = Variable<bool>(isBulkItem);
    map['app_created_at'] = Variable<DateTime>(appCreatedAt);
    map['app_updated_at'] = Variable<DateTime>(appUpdatedAt);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      originalId: originalId == null && nullToAbsent
          ? const Value.absent()
          : Value(originalId),
      ean: Value(ean),
      name: Value(name),
      shelfLifeDays: shelfLifeDays == null && nullToAbsent
          ? const Value.absent()
          : Value(shelfLifeDays),
      provider: provider == null && nullToAbsent
          ? const Value.absent()
          : Value(provider),
      temperature: temperature == null && nullToAbsent
          ? const Value.absent()
          : Value(temperature),
      sectionName: sectionName == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionName),
      sectionIdCsv: sectionIdCsv == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionIdCsv),
      sapCode: sapCode == null && nullToAbsent
          ? const Value.absent()
          : Value(sapCode),
      highInSaturatedFat: Value(highInSaturatedFat),
      highInSugar: Value(highInSugar),
      highInSodium: Value(highInSodium),
      highInCaloriesFlag: Value(highInCaloriesFlag),
      caloriesCsvValue: caloriesCsvValue == null && nullToAbsent
          ? const Value.absent()
          : Value(caloriesCsvValue),
      storageType: storageType == null && nullToAbsent
          ? const Value.absent()
          : Value(storageType),
      earlyWithdrawalFactor: earlyWithdrawalFactor == null && nullToAbsent
          ? const Value.absent()
          : Value(earlyWithdrawalFactor),
      specialWithdrawalCsv: specialWithdrawalCsv == null && nullToAbsent
          ? const Value.absent()
          : Value(specialWithdrawalCsv),
      importedDaysCsv: importedDaysCsv == null && nullToAbsent
          ? const Value.absent()
          : Value(importedDaysCsv),
      specialToleranceCsv: specialToleranceCsv == null && nullToAbsent
          ? const Value.absent()
          : Value(specialToleranceCsv),
      retiroPorZonaJumbo: retiroPorZonaJumbo == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroPorZonaJumbo),
      retiroAnticipadoJumbo: retiroAnticipadoJumbo == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroAnticipadoJumbo),
      retiroEspecialJumbo: retiroEspecialJumbo == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroEspecialJumbo),
      diasImportadoJumbo: diasImportadoJumbo == null && nullToAbsent
          ? const Value.absent()
          : Value(diasImportadoJumbo),
      toleranciaEspecialJumbo: toleranciaEspecialJumbo == null && nullToAbsent
          ? const Value.absent()
          : Value(toleranciaEspecialJumbo),
      retiroPorZonaSIsabel: retiroPorZonaSIsabel == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroPorZonaSIsabel),
      retiroAnticipadoSIsabel: retiroAnticipadoSIsabel == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroAnticipadoSIsabel),
      retiroEspecialSIsabelCsv: retiroEspecialSIsabelCsv == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroEspecialSIsabelCsv),
      diasImportadoSIsabel: diasImportadoSIsabel == null && nullToAbsent
          ? const Value.absent()
          : Value(diasImportadoSIsabel),
      toleranciaEspecialSIsabel:
          toleranciaEspecialSIsabel == null && nullToAbsent
              ? const Value.absent()
              : Value(toleranciaEspecialSIsabel),
      retiroPorZonaSpid: retiroPorZonaSpid == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroPorZonaSpid),
      retiroAnticipadoSpid: retiroAnticipadoSpid == null && nullToAbsent
          ? const Value.absent()
          : Value(retiroAnticipadoSpid),
      createdInCsvAt: createdInCsvAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdInCsvAt),
      createdInCsvBy: createdInCsvBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdInCsvBy),
      modifiedInCsvBy: modifiedInCsvBy == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedInCsvBy),
      modifiedInCsvAt: modifiedInCsvAt == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedInCsvAt),
      isBulkItem: Value(isBulkItem),
      appCreatedAt: Value(appCreatedAt),
      appUpdatedAt: Value(appUpdatedAt),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      originalId: serializer.fromJson<int?>(json['originalId']),
      ean: serializer.fromJson<String>(json['ean']),
      name: serializer.fromJson<String>(json['name']),
      shelfLifeDays: serializer.fromJson<int?>(json['shelfLifeDays']),
      provider: serializer.fromJson<String?>(json['provider']),
      temperature: serializer.fromJson<String?>(json['temperature']),
      sectionName: serializer.fromJson<String?>(json['sectionName']),
      sectionIdCsv: serializer.fromJson<String?>(json['sectionIdCsv']),
      sapCode: serializer.fromJson<String?>(json['sapCode']),
      highInSaturatedFat: serializer.fromJson<bool>(json['highInSaturatedFat']),
      highInSugar: serializer.fromJson<bool>(json['highInSugar']),
      highInSodium: serializer.fromJson<bool>(json['highInSodium']),
      highInCaloriesFlag: serializer.fromJson<bool>(json['highInCaloriesFlag']),
      caloriesCsvValue: serializer.fromJson<String?>(json['caloriesCsvValue']),
      storageType: serializer.fromJson<String?>(json['storageType']),
      earlyWithdrawalFactor:
          serializer.fromJson<String?>(json['earlyWithdrawalFactor']),
      specialWithdrawalCsv:
          serializer.fromJson<String?>(json['specialWithdrawalCsv']),
      importedDaysCsv: serializer.fromJson<String?>(json['importedDaysCsv']),
      specialToleranceCsv:
          serializer.fromJson<String?>(json['specialToleranceCsv']),
      retiroPorZonaJumbo:
          serializer.fromJson<String?>(json['retiroPorZonaJumbo']),
      retiroAnticipadoJumbo:
          serializer.fromJson<String?>(json['retiroAnticipadoJumbo']),
      retiroEspecialJumbo:
          serializer.fromJson<String?>(json['retiroEspecialJumbo']),
      diasImportadoJumbo:
          serializer.fromJson<String?>(json['diasImportadoJumbo']),
      toleranciaEspecialJumbo:
          serializer.fromJson<String?>(json['toleranciaEspecialJumbo']),
      retiroPorZonaSIsabel:
          serializer.fromJson<String?>(json['retiroPorZonaSIsabel']),
      retiroAnticipadoSIsabel:
          serializer.fromJson<String?>(json['retiroAnticipadoSIsabel']),
      retiroEspecialSIsabelCsv:
          serializer.fromJson<String?>(json['retiroEspecialSIsabelCsv']),
      diasImportadoSIsabel:
          serializer.fromJson<String?>(json['diasImportadoSIsabel']),
      toleranciaEspecialSIsabel:
          serializer.fromJson<String?>(json['toleranciaEspecialSIsabel']),
      retiroPorZonaSpid:
          serializer.fromJson<String?>(json['retiroPorZonaSpid']),
      retiroAnticipadoSpid:
          serializer.fromJson<String?>(json['retiroAnticipadoSpid']),
      createdInCsvAt: serializer.fromJson<String?>(json['createdInCsvAt']),
      createdInCsvBy: serializer.fromJson<String?>(json['createdInCsvBy']),
      modifiedInCsvBy: serializer.fromJson<String?>(json['modifiedInCsvBy']),
      modifiedInCsvAt: serializer.fromJson<String?>(json['modifiedInCsvAt']),
      isBulkItem: serializer.fromJson<bool>(json['isBulkItem']),
      appCreatedAt: serializer.fromJson<DateTime>(json['appCreatedAt']),
      appUpdatedAt: serializer.fromJson<DateTime>(json['appUpdatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'originalId': serializer.toJson<int?>(originalId),
      'ean': serializer.toJson<String>(ean),
      'name': serializer.toJson<String>(name),
      'shelfLifeDays': serializer.toJson<int?>(shelfLifeDays),
      'provider': serializer.toJson<String?>(provider),
      'temperature': serializer.toJson<String?>(temperature),
      'sectionName': serializer.toJson<String?>(sectionName),
      'sectionIdCsv': serializer.toJson<String?>(sectionIdCsv),
      'sapCode': serializer.toJson<String?>(sapCode),
      'highInSaturatedFat': serializer.toJson<bool>(highInSaturatedFat),
      'highInSugar': serializer.toJson<bool>(highInSugar),
      'highInSodium': serializer.toJson<bool>(highInSodium),
      'highInCaloriesFlag': serializer.toJson<bool>(highInCaloriesFlag),
      'caloriesCsvValue': serializer.toJson<String?>(caloriesCsvValue),
      'storageType': serializer.toJson<String?>(storageType),
      'earlyWithdrawalFactor':
          serializer.toJson<String?>(earlyWithdrawalFactor),
      'specialWithdrawalCsv': serializer.toJson<String?>(specialWithdrawalCsv),
      'importedDaysCsv': serializer.toJson<String?>(importedDaysCsv),
      'specialToleranceCsv': serializer.toJson<String?>(specialToleranceCsv),
      'retiroPorZonaJumbo': serializer.toJson<String?>(retiroPorZonaJumbo),
      'retiroAnticipadoJumbo':
          serializer.toJson<String?>(retiroAnticipadoJumbo),
      'retiroEspecialJumbo': serializer.toJson<String?>(retiroEspecialJumbo),
      'diasImportadoJumbo': serializer.toJson<String?>(diasImportadoJumbo),
      'toleranciaEspecialJumbo':
          serializer.toJson<String?>(toleranciaEspecialJumbo),
      'retiroPorZonaSIsabel': serializer.toJson<String?>(retiroPorZonaSIsabel),
      'retiroAnticipadoSIsabel':
          serializer.toJson<String?>(retiroAnticipadoSIsabel),
      'retiroEspecialSIsabelCsv':
          serializer.toJson<String?>(retiroEspecialSIsabelCsv),
      'diasImportadoSIsabel': serializer.toJson<String?>(diasImportadoSIsabel),
      'toleranciaEspecialSIsabel':
          serializer.toJson<String?>(toleranciaEspecialSIsabel),
      'retiroPorZonaSpid': serializer.toJson<String?>(retiroPorZonaSpid),
      'retiroAnticipadoSpid': serializer.toJson<String?>(retiroAnticipadoSpid),
      'createdInCsvAt': serializer.toJson<String?>(createdInCsvAt),
      'createdInCsvBy': serializer.toJson<String?>(createdInCsvBy),
      'modifiedInCsvBy': serializer.toJson<String?>(modifiedInCsvBy),
      'modifiedInCsvAt': serializer.toJson<String?>(modifiedInCsvAt),
      'isBulkItem': serializer.toJson<bool>(isBulkItem),
      'appCreatedAt': serializer.toJson<DateTime>(appCreatedAt),
      'appUpdatedAt': serializer.toJson<DateTime>(appUpdatedAt),
    };
  }

  Product copyWith(
          {Value<int?> originalId = const Value.absent(),
          String? ean,
          String? name,
          Value<int?> shelfLifeDays = const Value.absent(),
          Value<String?> provider = const Value.absent(),
          Value<String?> temperature = const Value.absent(),
          Value<String?> sectionName = const Value.absent(),
          Value<String?> sectionIdCsv = const Value.absent(),
          Value<String?> sapCode = const Value.absent(),
          bool? highInSaturatedFat,
          bool? highInSugar,
          bool? highInSodium,
          bool? highInCaloriesFlag,
          Value<String?> caloriesCsvValue = const Value.absent(),
          Value<String?> storageType = const Value.absent(),
          Value<String?> earlyWithdrawalFactor = const Value.absent(),
          Value<String?> specialWithdrawalCsv = const Value.absent(),
          Value<String?> importedDaysCsv = const Value.absent(),
          Value<String?> specialToleranceCsv = const Value.absent(),
          Value<String?> retiroPorZonaJumbo = const Value.absent(),
          Value<String?> retiroAnticipadoJumbo = const Value.absent(),
          Value<String?> retiroEspecialJumbo = const Value.absent(),
          Value<String?> diasImportadoJumbo = const Value.absent(),
          Value<String?> toleranciaEspecialJumbo = const Value.absent(),
          Value<String?> retiroPorZonaSIsabel = const Value.absent(),
          Value<String?> retiroAnticipadoSIsabel = const Value.absent(),
          Value<String?> retiroEspecialSIsabelCsv = const Value.absent(),
          Value<String?> diasImportadoSIsabel = const Value.absent(),
          Value<String?> toleranciaEspecialSIsabel = const Value.absent(),
          Value<String?> retiroPorZonaSpid = const Value.absent(),
          Value<String?> retiroAnticipadoSpid = const Value.absent(),
          Value<String?> createdInCsvAt = const Value.absent(),
          Value<String?> createdInCsvBy = const Value.absent(),
          Value<String?> modifiedInCsvBy = const Value.absent(),
          Value<String?> modifiedInCsvAt = const Value.absent(),
          bool? isBulkItem,
          DateTime? appCreatedAt,
          DateTime? appUpdatedAt}) =>
      Product(
        originalId: originalId.present ? originalId.value : this.originalId,
        ean: ean ?? this.ean,
        name: name ?? this.name,
        shelfLifeDays:
            shelfLifeDays.present ? shelfLifeDays.value : this.shelfLifeDays,
        provider: provider.present ? provider.value : this.provider,
        temperature: temperature.present ? temperature.value : this.temperature,
        sectionName: sectionName.present ? sectionName.value : this.sectionName,
        sectionIdCsv:
            sectionIdCsv.present ? sectionIdCsv.value : this.sectionIdCsv,
        sapCode: sapCode.present ? sapCode.value : this.sapCode,
        highInSaturatedFat: highInSaturatedFat ?? this.highInSaturatedFat,
        highInSugar: highInSugar ?? this.highInSugar,
        highInSodium: highInSodium ?? this.highInSodium,
        highInCaloriesFlag: highInCaloriesFlag ?? this.highInCaloriesFlag,
        caloriesCsvValue: caloriesCsvValue.present
            ? caloriesCsvValue.value
            : this.caloriesCsvValue,
        storageType: storageType.present ? storageType.value : this.storageType,
        earlyWithdrawalFactor: earlyWithdrawalFactor.present
            ? earlyWithdrawalFactor.value
            : this.earlyWithdrawalFactor,
        specialWithdrawalCsv: specialWithdrawalCsv.present
            ? specialWithdrawalCsv.value
            : this.specialWithdrawalCsv,
        importedDaysCsv: importedDaysCsv.present
            ? importedDaysCsv.value
            : this.importedDaysCsv,
        specialToleranceCsv: specialToleranceCsv.present
            ? specialToleranceCsv.value
            : this.specialToleranceCsv,
        retiroPorZonaJumbo: retiroPorZonaJumbo.present
            ? retiroPorZonaJumbo.value
            : this.retiroPorZonaJumbo,
        retiroAnticipadoJumbo: retiroAnticipadoJumbo.present
            ? retiroAnticipadoJumbo.value
            : this.retiroAnticipadoJumbo,
        retiroEspecialJumbo: retiroEspecialJumbo.present
            ? retiroEspecialJumbo.value
            : this.retiroEspecialJumbo,
        diasImportadoJumbo: diasImportadoJumbo.present
            ? diasImportadoJumbo.value
            : this.diasImportadoJumbo,
        toleranciaEspecialJumbo: toleranciaEspecialJumbo.present
            ? toleranciaEspecialJumbo.value
            : this.toleranciaEspecialJumbo,
        retiroPorZonaSIsabel: retiroPorZonaSIsabel.present
            ? retiroPorZonaSIsabel.value
            : this.retiroPorZonaSIsabel,
        retiroAnticipadoSIsabel: retiroAnticipadoSIsabel.present
            ? retiroAnticipadoSIsabel.value
            : this.retiroAnticipadoSIsabel,
        retiroEspecialSIsabelCsv: retiroEspecialSIsabelCsv.present
            ? retiroEspecialSIsabelCsv.value
            : this.retiroEspecialSIsabelCsv,
        diasImportadoSIsabel: diasImportadoSIsabel.present
            ? diasImportadoSIsabel.value
            : this.diasImportadoSIsabel,
        toleranciaEspecialSIsabel: toleranciaEspecialSIsabel.present
            ? toleranciaEspecialSIsabel.value
            : this.toleranciaEspecialSIsabel,
        retiroPorZonaSpid: retiroPorZonaSpid.present
            ? retiroPorZonaSpid.value
            : this.retiroPorZonaSpid,
        retiroAnticipadoSpid: retiroAnticipadoSpid.present
            ? retiroAnticipadoSpid.value
            : this.retiroAnticipadoSpid,
        createdInCsvAt:
            createdInCsvAt.present ? createdInCsvAt.value : this.createdInCsvAt,
        createdInCsvBy:
            createdInCsvBy.present ? createdInCsvBy.value : this.createdInCsvBy,
        modifiedInCsvBy: modifiedInCsvBy.present
            ? modifiedInCsvBy.value
            : this.modifiedInCsvBy,
        modifiedInCsvAt: modifiedInCsvAt.present
            ? modifiedInCsvAt.value
            : this.modifiedInCsvAt,
        isBulkItem: isBulkItem ?? this.isBulkItem,
        appCreatedAt: appCreatedAt ?? this.appCreatedAt,
        appUpdatedAt: appUpdatedAt ?? this.appUpdatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('originalId: $originalId, ')
          ..write('ean: $ean, ')
          ..write('name: $name, ')
          ..write('shelfLifeDays: $shelfLifeDays, ')
          ..write('provider: $provider, ')
          ..write('temperature: $temperature, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionIdCsv: $sectionIdCsv, ')
          ..write('sapCode: $sapCode, ')
          ..write('highInSaturatedFat: $highInSaturatedFat, ')
          ..write('highInSugar: $highInSugar, ')
          ..write('highInSodium: $highInSodium, ')
          ..write('highInCaloriesFlag: $highInCaloriesFlag, ')
          ..write('caloriesCsvValue: $caloriesCsvValue, ')
          ..write('storageType: $storageType, ')
          ..write('earlyWithdrawalFactor: $earlyWithdrawalFactor, ')
          ..write('specialWithdrawalCsv: $specialWithdrawalCsv, ')
          ..write('importedDaysCsv: $importedDaysCsv, ')
          ..write('specialToleranceCsv: $specialToleranceCsv, ')
          ..write('retiroPorZonaJumbo: $retiroPorZonaJumbo, ')
          ..write('retiroAnticipadoJumbo: $retiroAnticipadoJumbo, ')
          ..write('retiroEspecialJumbo: $retiroEspecialJumbo, ')
          ..write('diasImportadoJumbo: $diasImportadoJumbo, ')
          ..write('toleranciaEspecialJumbo: $toleranciaEspecialJumbo, ')
          ..write('retiroPorZonaSIsabel: $retiroPorZonaSIsabel, ')
          ..write('retiroAnticipadoSIsabel: $retiroAnticipadoSIsabel, ')
          ..write('retiroEspecialSIsabelCsv: $retiroEspecialSIsabelCsv, ')
          ..write('diasImportadoSIsabel: $diasImportadoSIsabel, ')
          ..write('toleranciaEspecialSIsabel: $toleranciaEspecialSIsabel, ')
          ..write('retiroPorZonaSpid: $retiroPorZonaSpid, ')
          ..write('retiroAnticipadoSpid: $retiroAnticipadoSpid, ')
          ..write('createdInCsvAt: $createdInCsvAt, ')
          ..write('createdInCsvBy: $createdInCsvBy, ')
          ..write('modifiedInCsvBy: $modifiedInCsvBy, ')
          ..write('modifiedInCsvAt: $modifiedInCsvAt, ')
          ..write('isBulkItem: $isBulkItem, ')
          ..write('appCreatedAt: $appCreatedAt, ')
          ..write('appUpdatedAt: $appUpdatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        originalId,
        ean,
        name,
        shelfLifeDays,
        provider,
        temperature,
        sectionName,
        sectionIdCsv,
        sapCode,
        highInSaturatedFat,
        highInSugar,
        highInSodium,
        highInCaloriesFlag,
        caloriesCsvValue,
        storageType,
        earlyWithdrawalFactor,
        specialWithdrawalCsv,
        importedDaysCsv,
        specialToleranceCsv,
        retiroPorZonaJumbo,
        retiroAnticipadoJumbo,
        retiroEspecialJumbo,
        diasImportadoJumbo,
        toleranciaEspecialJumbo,
        retiroPorZonaSIsabel,
        retiroAnticipadoSIsabel,
        retiroEspecialSIsabelCsv,
        diasImportadoSIsabel,
        toleranciaEspecialSIsabel,
        retiroPorZonaSpid,
        retiroAnticipadoSpid,
        createdInCsvAt,
        createdInCsvBy,
        modifiedInCsvBy,
        modifiedInCsvAt,
        isBulkItem,
        appCreatedAt,
        appUpdatedAt
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.originalId == this.originalId &&
          other.ean == this.ean &&
          other.name == this.name &&
          other.shelfLifeDays == this.shelfLifeDays &&
          other.provider == this.provider &&
          other.temperature == this.temperature &&
          other.sectionName == this.sectionName &&
          other.sectionIdCsv == this.sectionIdCsv &&
          other.sapCode == this.sapCode &&
          other.highInSaturatedFat == this.highInSaturatedFat &&
          other.highInSugar == this.highInSugar &&
          other.highInSodium == this.highInSodium &&
          other.highInCaloriesFlag == this.highInCaloriesFlag &&
          other.caloriesCsvValue == this.caloriesCsvValue &&
          other.storageType == this.storageType &&
          other.earlyWithdrawalFactor == this.earlyWithdrawalFactor &&
          other.specialWithdrawalCsv == this.specialWithdrawalCsv &&
          other.importedDaysCsv == this.importedDaysCsv &&
          other.specialToleranceCsv == this.specialToleranceCsv &&
          other.retiroPorZonaJumbo == this.retiroPorZonaJumbo &&
          other.retiroAnticipadoJumbo == this.retiroAnticipadoJumbo &&
          other.retiroEspecialJumbo == this.retiroEspecialJumbo &&
          other.diasImportadoJumbo == this.diasImportadoJumbo &&
          other.toleranciaEspecialJumbo == this.toleranciaEspecialJumbo &&
          other.retiroPorZonaSIsabel == this.retiroPorZonaSIsabel &&
          other.retiroAnticipadoSIsabel == this.retiroAnticipadoSIsabel &&
          other.retiroEspecialSIsabelCsv == this.retiroEspecialSIsabelCsv &&
          other.diasImportadoSIsabel == this.diasImportadoSIsabel &&
          other.toleranciaEspecialSIsabel == this.toleranciaEspecialSIsabel &&
          other.retiroPorZonaSpid == this.retiroPorZonaSpid &&
          other.retiroAnticipadoSpid == this.retiroAnticipadoSpid &&
          other.createdInCsvAt == this.createdInCsvAt &&
          other.createdInCsvBy == this.createdInCsvBy &&
          other.modifiedInCsvBy == this.modifiedInCsvBy &&
          other.modifiedInCsvAt == this.modifiedInCsvAt &&
          other.isBulkItem == this.isBulkItem &&
          other.appCreatedAt == this.appCreatedAt &&
          other.appUpdatedAt == this.appUpdatedAt);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int?> originalId;
  final Value<String> ean;
  final Value<String> name;
  final Value<int?> shelfLifeDays;
  final Value<String?> provider;
  final Value<String?> temperature;
  final Value<String?> sectionName;
  final Value<String?> sectionIdCsv;
  final Value<String?> sapCode;
  final Value<bool> highInSaturatedFat;
  final Value<bool> highInSugar;
  final Value<bool> highInSodium;
  final Value<bool> highInCaloriesFlag;
  final Value<String?> caloriesCsvValue;
  final Value<String?> storageType;
  final Value<String?> earlyWithdrawalFactor;
  final Value<String?> specialWithdrawalCsv;
  final Value<String?> importedDaysCsv;
  final Value<String?> specialToleranceCsv;
  final Value<String?> retiroPorZonaJumbo;
  final Value<String?> retiroAnticipadoJumbo;
  final Value<String?> retiroEspecialJumbo;
  final Value<String?> diasImportadoJumbo;
  final Value<String?> toleranciaEspecialJumbo;
  final Value<String?> retiroPorZonaSIsabel;
  final Value<String?> retiroAnticipadoSIsabel;
  final Value<String?> retiroEspecialSIsabelCsv;
  final Value<String?> diasImportadoSIsabel;
  final Value<String?> toleranciaEspecialSIsabel;
  final Value<String?> retiroPorZonaSpid;
  final Value<String?> retiroAnticipadoSpid;
  final Value<String?> createdInCsvAt;
  final Value<String?> createdInCsvBy;
  final Value<String?> modifiedInCsvBy;
  final Value<String?> modifiedInCsvAt;
  final Value<bool> isBulkItem;
  final Value<DateTime> appCreatedAt;
  final Value<DateTime> appUpdatedAt;
  final Value<int> rowid;
  const ProductsCompanion({
    this.originalId = const Value.absent(),
    this.ean = const Value.absent(),
    this.name = const Value.absent(),
    this.shelfLifeDays = const Value.absent(),
    this.provider = const Value.absent(),
    this.temperature = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionIdCsv = const Value.absent(),
    this.sapCode = const Value.absent(),
    this.highInSaturatedFat = const Value.absent(),
    this.highInSugar = const Value.absent(),
    this.highInSodium = const Value.absent(),
    this.highInCaloriesFlag = const Value.absent(),
    this.caloriesCsvValue = const Value.absent(),
    this.storageType = const Value.absent(),
    this.earlyWithdrawalFactor = const Value.absent(),
    this.specialWithdrawalCsv = const Value.absent(),
    this.importedDaysCsv = const Value.absent(),
    this.specialToleranceCsv = const Value.absent(),
    this.retiroPorZonaJumbo = const Value.absent(),
    this.retiroAnticipadoJumbo = const Value.absent(),
    this.retiroEspecialJumbo = const Value.absent(),
    this.diasImportadoJumbo = const Value.absent(),
    this.toleranciaEspecialJumbo = const Value.absent(),
    this.retiroPorZonaSIsabel = const Value.absent(),
    this.retiroAnticipadoSIsabel = const Value.absent(),
    this.retiroEspecialSIsabelCsv = const Value.absent(),
    this.diasImportadoSIsabel = const Value.absent(),
    this.toleranciaEspecialSIsabel = const Value.absent(),
    this.retiroPorZonaSpid = const Value.absent(),
    this.retiroAnticipadoSpid = const Value.absent(),
    this.createdInCsvAt = const Value.absent(),
    this.createdInCsvBy = const Value.absent(),
    this.modifiedInCsvBy = const Value.absent(),
    this.modifiedInCsvAt = const Value.absent(),
    this.isBulkItem = const Value.absent(),
    this.appCreatedAt = const Value.absent(),
    this.appUpdatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.originalId = const Value.absent(),
    required String ean,
    required String name,
    this.shelfLifeDays = const Value.absent(),
    this.provider = const Value.absent(),
    this.temperature = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionIdCsv = const Value.absent(),
    this.sapCode = const Value.absent(),
    this.highInSaturatedFat = const Value.absent(),
    this.highInSugar = const Value.absent(),
    this.highInSodium = const Value.absent(),
    this.highInCaloriesFlag = const Value.absent(),
    this.caloriesCsvValue = const Value.absent(),
    this.storageType = const Value.absent(),
    this.earlyWithdrawalFactor = const Value.absent(),
    this.specialWithdrawalCsv = const Value.absent(),
    this.importedDaysCsv = const Value.absent(),
    this.specialToleranceCsv = const Value.absent(),
    this.retiroPorZonaJumbo = const Value.absent(),
    this.retiroAnticipadoJumbo = const Value.absent(),
    this.retiroEspecialJumbo = const Value.absent(),
    this.diasImportadoJumbo = const Value.absent(),
    this.toleranciaEspecialJumbo = const Value.absent(),
    this.retiroPorZonaSIsabel = const Value.absent(),
    this.retiroAnticipadoSIsabel = const Value.absent(),
    this.retiroEspecialSIsabelCsv = const Value.absent(),
    this.diasImportadoSIsabel = const Value.absent(),
    this.toleranciaEspecialSIsabel = const Value.absent(),
    this.retiroPorZonaSpid = const Value.absent(),
    this.retiroAnticipadoSpid = const Value.absent(),
    this.createdInCsvAt = const Value.absent(),
    this.createdInCsvBy = const Value.absent(),
    this.modifiedInCsvBy = const Value.absent(),
    this.modifiedInCsvAt = const Value.absent(),
    this.isBulkItem = const Value.absent(),
    this.appCreatedAt = const Value.absent(),
    this.appUpdatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : ean = Value(ean),
        name = Value(name);
  static Insertable<Product> custom({
    Expression<int>? originalId,
    Expression<String>? ean,
    Expression<String>? name,
    Expression<int>? shelfLifeDays,
    Expression<String>? provider,
    Expression<String>? temperature,
    Expression<String>? sectionName,
    Expression<String>? sectionIdCsv,
    Expression<String>? sapCode,
    Expression<bool>? highInSaturatedFat,
    Expression<bool>? highInSugar,
    Expression<bool>? highInSodium,
    Expression<bool>? highInCaloriesFlag,
    Expression<String>? caloriesCsvValue,
    Expression<String>? storageType,
    Expression<String>? earlyWithdrawalFactor,
    Expression<String>? specialWithdrawalCsv,
    Expression<String>? importedDaysCsv,
    Expression<String>? specialToleranceCsv,
    Expression<String>? retiroPorZonaJumbo,
    Expression<String>? retiroAnticipadoJumbo,
    Expression<String>? retiroEspecialJumbo,
    Expression<String>? diasImportadoJumbo,
    Expression<String>? toleranciaEspecialJumbo,
    Expression<String>? retiroPorZonaSIsabel,
    Expression<String>? retiroAnticipadoSIsabel,
    Expression<String>? retiroEspecialSIsabelCsv,
    Expression<String>? diasImportadoSIsabel,
    Expression<String>? toleranciaEspecialSIsabel,
    Expression<String>? retiroPorZonaSpid,
    Expression<String>? retiroAnticipadoSpid,
    Expression<String>? createdInCsvAt,
    Expression<String>? createdInCsvBy,
    Expression<String>? modifiedInCsvBy,
    Expression<String>? modifiedInCsvAt,
    Expression<bool>? isBulkItem,
    Expression<DateTime>? appCreatedAt,
    Expression<DateTime>? appUpdatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (originalId != null) 'original_id': originalId,
      if (ean != null) 'ean': ean,
      if (name != null) 'nombre_producto': name,
      if (shelfLifeDays != null) 'vida_util': shelfLifeDays,
      if (provider != null) 'razon_social': provider,
      if (temperature != null) 'temperatura': temperature,
      if (sectionName != null) 'seccion_nombre': sectionName,
      if (sectionIdCsv != null) 'id_seccion_csv': sectionIdCsv,
      if (sapCode != null) 'sap_code': sapCode,
      if (highInSaturatedFat != null)
        'alto_en_grasas_saturadas': highInSaturatedFat,
      if (highInSugar != null) 'alto_en_azucares': highInSugar,
      if (highInSodium != null) 'alto_en_sodio': highInSodium,
      if (highInCaloriesFlag != null)
        'alto_en_calorias_flag': highInCaloriesFlag,
      if (caloriesCsvValue != null) 'calorias_csv_valor': caloriesCsvValue,
      if (storageType != null) 'almacenamiento': storageType,
      if (earlyWithdrawalFactor != null)
        'retiro_anticipado_csv': earlyWithdrawalFactor,
      if (specialWithdrawalCsv != null)
        'retiro_especial_csv': specialWithdrawalCsv,
      if (importedDaysCsv != null) 'dias_importado_csv': importedDaysCsv,
      if (specialToleranceCsv != null)
        'tolerancia_especial_csv': specialToleranceCsv,
      if (retiroPorZonaJumbo != null)
        'retiro_zona_jumbo_csv': retiroPorZonaJumbo,
      if (retiroAnticipadoJumbo != null)
        'retiro_anticipado_jumbo_csv': retiroAnticipadoJumbo,
      if (retiroEspecialJumbo != null)
        'retiro_especial_jumbo_csv': retiroEspecialJumbo,
      if (diasImportadoJumbo != null)
        'dias_importado_jumbo_csv': diasImportadoJumbo,
      if (toleranciaEspecialJumbo != null)
        'tolerancia_especial_jumbo_csv': toleranciaEspecialJumbo,
      if (retiroPorZonaSIsabel != null)
        'retiro_zona_sisabel_csv': retiroPorZonaSIsabel,
      if (retiroAnticipadoSIsabel != null)
        'retiro_anticipado_sisabel_csv': retiroAnticipadoSIsabel,
      if (retiroEspecialSIsabelCsv != null)
        'retiro_especial_sisabel_csv': retiroEspecialSIsabelCsv,
      if (diasImportadoSIsabel != null)
        'dias_importado_sisabel_csv': diasImportadoSIsabel,
      if (toleranciaEspecialSIsabel != null)
        'tolerancia_especial_sisabel_csv': toleranciaEspecialSIsabel,
      if (retiroPorZonaSpid != null) 'retiro_zona_spid_csv': retiroPorZonaSpid,
      if (retiroAnticipadoSpid != null)
        'retiro_anticipado_spid_csv': retiroAnticipadoSpid,
      if (createdInCsvAt != null) 'creado_csv_fecha': createdInCsvAt,
      if (createdInCsvBy != null) 'creado_csv_por': createdInCsvBy,
      if (modifiedInCsvBy != null) 'modificado_csv_por': modifiedInCsvBy,
      if (modifiedInCsvAt != null) 'modificado_csv_fecha': modifiedInCsvAt,
      if (isBulkItem != null) 'is_bulk_item_app': isBulkItem,
      if (appCreatedAt != null) 'app_created_at': appCreatedAt,
      if (appUpdatedAt != null) 'app_updated_at': appUpdatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith(
      {Value<int?>? originalId,
      Value<String>? ean,
      Value<String>? name,
      Value<int?>? shelfLifeDays,
      Value<String?>? provider,
      Value<String?>? temperature,
      Value<String?>? sectionName,
      Value<String?>? sectionIdCsv,
      Value<String?>? sapCode,
      Value<bool>? highInSaturatedFat,
      Value<bool>? highInSugar,
      Value<bool>? highInSodium,
      Value<bool>? highInCaloriesFlag,
      Value<String?>? caloriesCsvValue,
      Value<String?>? storageType,
      Value<String?>? earlyWithdrawalFactor,
      Value<String?>? specialWithdrawalCsv,
      Value<String?>? importedDaysCsv,
      Value<String?>? specialToleranceCsv,
      Value<String?>? retiroPorZonaJumbo,
      Value<String?>? retiroAnticipadoJumbo,
      Value<String?>? retiroEspecialJumbo,
      Value<String?>? diasImportadoJumbo,
      Value<String?>? toleranciaEspecialJumbo,
      Value<String?>? retiroPorZonaSIsabel,
      Value<String?>? retiroAnticipadoSIsabel,
      Value<String?>? retiroEspecialSIsabelCsv,
      Value<String?>? diasImportadoSIsabel,
      Value<String?>? toleranciaEspecialSIsabel,
      Value<String?>? retiroPorZonaSpid,
      Value<String?>? retiroAnticipadoSpid,
      Value<String?>? createdInCsvAt,
      Value<String?>? createdInCsvBy,
      Value<String?>? modifiedInCsvBy,
      Value<String?>? modifiedInCsvAt,
      Value<bool>? isBulkItem,
      Value<DateTime>? appCreatedAt,
      Value<DateTime>? appUpdatedAt,
      Value<int>? rowid}) {
    return ProductsCompanion(
      originalId: originalId ?? this.originalId,
      ean: ean ?? this.ean,
      name: name ?? this.name,
      shelfLifeDays: shelfLifeDays ?? this.shelfLifeDays,
      provider: provider ?? this.provider,
      temperature: temperature ?? this.temperature,
      sectionName: sectionName ?? this.sectionName,
      sectionIdCsv: sectionIdCsv ?? this.sectionIdCsv,
      sapCode: sapCode ?? this.sapCode,
      highInSaturatedFat: highInSaturatedFat ?? this.highInSaturatedFat,
      highInSugar: highInSugar ?? this.highInSugar,
      highInSodium: highInSodium ?? this.highInSodium,
      highInCaloriesFlag: highInCaloriesFlag ?? this.highInCaloriesFlag,
      caloriesCsvValue: caloriesCsvValue ?? this.caloriesCsvValue,
      storageType: storageType ?? this.storageType,
      earlyWithdrawalFactor:
          earlyWithdrawalFactor ?? this.earlyWithdrawalFactor,
      specialWithdrawalCsv: specialWithdrawalCsv ?? this.specialWithdrawalCsv,
      importedDaysCsv: importedDaysCsv ?? this.importedDaysCsv,
      specialToleranceCsv: specialToleranceCsv ?? this.specialToleranceCsv,
      retiroPorZonaJumbo: retiroPorZonaJumbo ?? this.retiroPorZonaJumbo,
      retiroAnticipadoJumbo:
          retiroAnticipadoJumbo ?? this.retiroAnticipadoJumbo,
      retiroEspecialJumbo: retiroEspecialJumbo ?? this.retiroEspecialJumbo,
      diasImportadoJumbo: diasImportadoJumbo ?? this.diasImportadoJumbo,
      toleranciaEspecialJumbo:
          toleranciaEspecialJumbo ?? this.toleranciaEspecialJumbo,
      retiroPorZonaSIsabel: retiroPorZonaSIsabel ?? this.retiroPorZonaSIsabel,
      retiroAnticipadoSIsabel:
          retiroAnticipadoSIsabel ?? this.retiroAnticipadoSIsabel,
      retiroEspecialSIsabelCsv:
          retiroEspecialSIsabelCsv ?? this.retiroEspecialSIsabelCsv,
      diasImportadoSIsabel: diasImportadoSIsabel ?? this.diasImportadoSIsabel,
      toleranciaEspecialSIsabel:
          toleranciaEspecialSIsabel ?? this.toleranciaEspecialSIsabel,
      retiroPorZonaSpid: retiroPorZonaSpid ?? this.retiroPorZonaSpid,
      retiroAnticipadoSpid: retiroAnticipadoSpid ?? this.retiroAnticipadoSpid,
      createdInCsvAt: createdInCsvAt ?? this.createdInCsvAt,
      createdInCsvBy: createdInCsvBy ?? this.createdInCsvBy,
      modifiedInCsvBy: modifiedInCsvBy ?? this.modifiedInCsvBy,
      modifiedInCsvAt: modifiedInCsvAt ?? this.modifiedInCsvAt,
      isBulkItem: isBulkItem ?? this.isBulkItem,
      appCreatedAt: appCreatedAt ?? this.appCreatedAt,
      appUpdatedAt: appUpdatedAt ?? this.appUpdatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (originalId.present) {
      map['original_id'] = Variable<int>(originalId.value);
    }
    if (ean.present) {
      map['ean'] = Variable<String>(ean.value);
    }
    if (name.present) {
      map['nombre_producto'] = Variable<String>(name.value);
    }
    if (shelfLifeDays.present) {
      map['vida_util'] = Variable<int>(shelfLifeDays.value);
    }
    if (provider.present) {
      map['razon_social'] = Variable<String>(provider.value);
    }
    if (temperature.present) {
      map['temperatura'] = Variable<String>(temperature.value);
    }
    if (sectionName.present) {
      map['seccion_nombre'] = Variable<String>(sectionName.value);
    }
    if (sectionIdCsv.present) {
      map['id_seccion_csv'] = Variable<String>(sectionIdCsv.value);
    }
    if (sapCode.present) {
      map['sap_code'] = Variable<String>(sapCode.value);
    }
    if (highInSaturatedFat.present) {
      map['alto_en_grasas_saturadas'] =
          Variable<bool>(highInSaturatedFat.value);
    }
    if (highInSugar.present) {
      map['alto_en_azucares'] = Variable<bool>(highInSugar.value);
    }
    if (highInSodium.present) {
      map['alto_en_sodio'] = Variable<bool>(highInSodium.value);
    }
    if (highInCaloriesFlag.present) {
      map['alto_en_calorias_flag'] = Variable<bool>(highInCaloriesFlag.value);
    }
    if (caloriesCsvValue.present) {
      map['calorias_csv_valor'] = Variable<String>(caloriesCsvValue.value);
    }
    if (storageType.present) {
      map['almacenamiento'] = Variable<String>(storageType.value);
    }
    if (earlyWithdrawalFactor.present) {
      map['retiro_anticipado_csv'] =
          Variable<String>(earlyWithdrawalFactor.value);
    }
    if (specialWithdrawalCsv.present) {
      map['retiro_especial_csv'] = Variable<String>(specialWithdrawalCsv.value);
    }
    if (importedDaysCsv.present) {
      map['dias_importado_csv'] = Variable<String>(importedDaysCsv.value);
    }
    if (specialToleranceCsv.present) {
      map['tolerancia_especial_csv'] =
          Variable<String>(specialToleranceCsv.value);
    }
    if (retiroPorZonaJumbo.present) {
      map['retiro_zona_jumbo_csv'] = Variable<String>(retiroPorZonaJumbo.value);
    }
    if (retiroAnticipadoJumbo.present) {
      map['retiro_anticipado_jumbo_csv'] =
          Variable<String>(retiroAnticipadoJumbo.value);
    }
    if (retiroEspecialJumbo.present) {
      map['retiro_especial_jumbo_csv'] =
          Variable<String>(retiroEspecialJumbo.value);
    }
    if (diasImportadoJumbo.present) {
      map['dias_importado_jumbo_csv'] =
          Variable<String>(diasImportadoJumbo.value);
    }
    if (toleranciaEspecialJumbo.present) {
      map['tolerancia_especial_jumbo_csv'] =
          Variable<String>(toleranciaEspecialJumbo.value);
    }
    if (retiroPorZonaSIsabel.present) {
      map['retiro_zona_sisabel_csv'] =
          Variable<String>(retiroPorZonaSIsabel.value);
    }
    if (retiroAnticipadoSIsabel.present) {
      map['retiro_anticipado_sisabel_csv'] =
          Variable<String>(retiroAnticipadoSIsabel.value);
    }
    if (retiroEspecialSIsabelCsv.present) {
      map['retiro_especial_sisabel_csv'] =
          Variable<String>(retiroEspecialSIsabelCsv.value);
    }
    if (diasImportadoSIsabel.present) {
      map['dias_importado_sisabel_csv'] =
          Variable<String>(diasImportadoSIsabel.value);
    }
    if (toleranciaEspecialSIsabel.present) {
      map['tolerancia_especial_sisabel_csv'] =
          Variable<String>(toleranciaEspecialSIsabel.value);
    }
    if (retiroPorZonaSpid.present) {
      map['retiro_zona_spid_csv'] = Variable<String>(retiroPorZonaSpid.value);
    }
    if (retiroAnticipadoSpid.present) {
      map['retiro_anticipado_spid_csv'] =
          Variable<String>(retiroAnticipadoSpid.value);
    }
    if (createdInCsvAt.present) {
      map['creado_csv_fecha'] = Variable<String>(createdInCsvAt.value);
    }
    if (createdInCsvBy.present) {
      map['creado_csv_por'] = Variable<String>(createdInCsvBy.value);
    }
    if (modifiedInCsvBy.present) {
      map['modificado_csv_por'] = Variable<String>(modifiedInCsvBy.value);
    }
    if (modifiedInCsvAt.present) {
      map['modificado_csv_fecha'] = Variable<String>(modifiedInCsvAt.value);
    }
    if (isBulkItem.present) {
      map['is_bulk_item_app'] = Variable<bool>(isBulkItem.value);
    }
    if (appCreatedAt.present) {
      map['app_created_at'] = Variable<DateTime>(appCreatedAt.value);
    }
    if (appUpdatedAt.present) {
      map['app_updated_at'] = Variable<DateTime>(appUpdatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('originalId: $originalId, ')
          ..write('ean: $ean, ')
          ..write('name: $name, ')
          ..write('shelfLifeDays: $shelfLifeDays, ')
          ..write('provider: $provider, ')
          ..write('temperature: $temperature, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionIdCsv: $sectionIdCsv, ')
          ..write('sapCode: $sapCode, ')
          ..write('highInSaturatedFat: $highInSaturatedFat, ')
          ..write('highInSugar: $highInSugar, ')
          ..write('highInSodium: $highInSodium, ')
          ..write('highInCaloriesFlag: $highInCaloriesFlag, ')
          ..write('caloriesCsvValue: $caloriesCsvValue, ')
          ..write('storageType: $storageType, ')
          ..write('earlyWithdrawalFactor: $earlyWithdrawalFactor, ')
          ..write('specialWithdrawalCsv: $specialWithdrawalCsv, ')
          ..write('importedDaysCsv: $importedDaysCsv, ')
          ..write('specialToleranceCsv: $specialToleranceCsv, ')
          ..write('retiroPorZonaJumbo: $retiroPorZonaJumbo, ')
          ..write('retiroAnticipadoJumbo: $retiroAnticipadoJumbo, ')
          ..write('retiroEspecialJumbo: $retiroEspecialJumbo, ')
          ..write('diasImportadoJumbo: $diasImportadoJumbo, ')
          ..write('toleranciaEspecialJumbo: $toleranciaEspecialJumbo, ')
          ..write('retiroPorZonaSIsabel: $retiroPorZonaSIsabel, ')
          ..write('retiroAnticipadoSIsabel: $retiroAnticipadoSIsabel, ')
          ..write('retiroEspecialSIsabelCsv: $retiroEspecialSIsabelCsv, ')
          ..write('diasImportadoSIsabel: $diasImportadoSIsabel, ')
          ..write('toleranciaEspecialSIsabel: $toleranciaEspecialSIsabel, ')
          ..write('retiroPorZonaSpid: $retiroPorZonaSpid, ')
          ..write('retiroAnticipadoSpid: $retiroAnticipadoSpid, ')
          ..write('createdInCsvAt: $createdInCsvAt, ')
          ..write('createdInCsvBy: $createdInCsvBy, ')
          ..write('modifiedInCsvBy: $modifiedInCsvBy, ')
          ..write('modifiedInCsvAt: $modifiedInCsvAt, ')
          ..write('isBulkItem: $isBulkItem, ')
          ..write('appCreatedAt: $appCreatedAt, ')
          ..write('appUpdatedAt: $appUpdatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QualityActionsTable extends QualityActions
    with TableInfo<$QualityActionsTable, QualityAction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QualityActionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _eanMeta = const VerificationMeta('ean');
  @override
  late final GeneratedColumn<String> ean = GeneratedColumn<String>(
      'ean', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES products (ean)'));
  static const VerificationMeta _actionTypeMeta =
      const VerificationMeta('actionType');
  @override
  late final GeneratedColumn<String> actionType = GeneratedColumn<String>(
      'action_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
      'expiry_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _calculatedLimitDateMeta =
      const VerificationMeta('calculatedLimitDate');
  @override
  late final GeneratedColumn<String> calculatedLimitDate =
      GeneratedColumn<String>('calculated_limit_date', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
      'reason', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionIdAppMeta =
      const VerificationMeta('sectionIdApp');
  @override
  late final GeneratedColumn<int> sectionIdApp = GeneratedColumn<int>(
      'section_id_app', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storeCodeMeta =
      const VerificationMeta('storeCode');
  @override
  late final GeneratedColumn<String> storeCode = GeneratedColumn<String>(
      'store_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ean,
        actionType,
        expiryDate,
        calculatedLimitDate,
        reason,
        sectionIdApp,
        userId,
        storeCode,
        createdAt,
        synced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quality_actions';
  @override
  VerificationContext validateIntegrity(Insertable<QualityAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ean')) {
      context.handle(
          _eanMeta, ean.isAcceptableOrUnknown(data['ean']!, _eanMeta));
    } else if (isInserting) {
      context.missing(_eanMeta);
    }
    if (data.containsKey('action_type')) {
      context.handle(
          _actionTypeMeta,
          actionType.isAcceptableOrUnknown(
              data['action_type']!, _actionTypeMeta));
    } else if (isInserting) {
      context.missing(_actionTypeMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    } else if (isInserting) {
      context.missing(_expiryDateMeta);
    }
    if (data.containsKey('calculated_limit_date')) {
      context.handle(
          _calculatedLimitDateMeta,
          calculatedLimitDate.isAcceptableOrUnknown(
              data['calculated_limit_date']!, _calculatedLimitDateMeta));
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    } else if (isInserting) {
      context.missing(_reasonMeta);
    }
    if (data.containsKey('section_id_app')) {
      context.handle(
          _sectionIdAppMeta,
          sectionIdApp.isAcceptableOrUnknown(
              data['section_id_app']!, _sectionIdAppMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('store_code')) {
      context.handle(_storeCodeMeta,
          storeCode.isAcceptableOrUnknown(data['store_code']!, _storeCodeMeta));
    } else if (isInserting) {
      context.missing(_storeCodeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QualityAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QualityAction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ean: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ean'])!,
      actionType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}action_type'])!,
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expiry_date'])!,
      calculatedLimitDate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}calculated_limit_date']),
      reason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reason'])!,
      sectionIdApp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id_app']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      storeCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}store_code'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
    );
  }

  @override
  $QualityActionsTable createAlias(String alias) {
    return $QualityActionsTable(attachedDatabase, alias);
  }
}

class QualityAction extends DataClass implements Insertable<QualityAction> {
  final int id;
  final String ean;
  final String actionType;
  final String expiryDate;
  final String? calculatedLimitDate;
  final String reason;
  final int? sectionIdApp;
  final String userId;
  final String storeCode;
  final DateTime createdAt;
  final bool synced;
  const QualityAction(
      {required this.id,
      required this.ean,
      required this.actionType,
      required this.expiryDate,
      this.calculatedLimitDate,
      required this.reason,
      this.sectionIdApp,
      required this.userId,
      required this.storeCode,
      required this.createdAt,
      required this.synced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['ean'] = Variable<String>(ean);
    map['action_type'] = Variable<String>(actionType);
    map['expiry_date'] = Variable<String>(expiryDate);
    if (!nullToAbsent || calculatedLimitDate != null) {
      map['calculated_limit_date'] = Variable<String>(calculatedLimitDate);
    }
    map['reason'] = Variable<String>(reason);
    if (!nullToAbsent || sectionIdApp != null) {
      map['section_id_app'] = Variable<int>(sectionIdApp);
    }
    map['user_id'] = Variable<String>(userId);
    map['store_code'] = Variable<String>(storeCode);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  QualityActionsCompanion toCompanion(bool nullToAbsent) {
    return QualityActionsCompanion(
      id: Value(id),
      ean: Value(ean),
      actionType: Value(actionType),
      expiryDate: Value(expiryDate),
      calculatedLimitDate: calculatedLimitDate == null && nullToAbsent
          ? const Value.absent()
          : Value(calculatedLimitDate),
      reason: Value(reason),
      sectionIdApp: sectionIdApp == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionIdApp),
      userId: Value(userId),
      storeCode: Value(storeCode),
      createdAt: Value(createdAt),
      synced: Value(synced),
    );
  }

  factory QualityAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QualityAction(
      id: serializer.fromJson<int>(json['id']),
      ean: serializer.fromJson<String>(json['ean']),
      actionType: serializer.fromJson<String>(json['actionType']),
      expiryDate: serializer.fromJson<String>(json['expiryDate']),
      calculatedLimitDate:
          serializer.fromJson<String?>(json['calculatedLimitDate']),
      reason: serializer.fromJson<String>(json['reason']),
      sectionIdApp: serializer.fromJson<int?>(json['sectionIdApp']),
      userId: serializer.fromJson<String>(json['userId']),
      storeCode: serializer.fromJson<String>(json['storeCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ean': serializer.toJson<String>(ean),
      'actionType': serializer.toJson<String>(actionType),
      'expiryDate': serializer.toJson<String>(expiryDate),
      'calculatedLimitDate': serializer.toJson<String?>(calculatedLimitDate),
      'reason': serializer.toJson<String>(reason),
      'sectionIdApp': serializer.toJson<int?>(sectionIdApp),
      'userId': serializer.toJson<String>(userId),
      'storeCode': serializer.toJson<String>(storeCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  QualityAction copyWith(
          {int? id,
          String? ean,
          String? actionType,
          String? expiryDate,
          Value<String?> calculatedLimitDate = const Value.absent(),
          String? reason,
          Value<int?> sectionIdApp = const Value.absent(),
          String? userId,
          String? storeCode,
          DateTime? createdAt,
          bool? synced}) =>
      QualityAction(
        id: id ?? this.id,
        ean: ean ?? this.ean,
        actionType: actionType ?? this.actionType,
        expiryDate: expiryDate ?? this.expiryDate,
        calculatedLimitDate: calculatedLimitDate.present
            ? calculatedLimitDate.value
            : this.calculatedLimitDate,
        reason: reason ?? this.reason,
        sectionIdApp:
            sectionIdApp.present ? sectionIdApp.value : this.sectionIdApp,
        userId: userId ?? this.userId,
        storeCode: storeCode ?? this.storeCode,
        createdAt: createdAt ?? this.createdAt,
        synced: synced ?? this.synced,
      );
  @override
  String toString() {
    return (StringBuffer('QualityAction(')
          ..write('id: $id, ')
          ..write('ean: $ean, ')
          ..write('actionType: $actionType, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('calculatedLimitDate: $calculatedLimitDate, ')
          ..write('reason: $reason, ')
          ..write('sectionIdApp: $sectionIdApp, ')
          ..write('userId: $userId, ')
          ..write('storeCode: $storeCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      ean,
      actionType,
      expiryDate,
      calculatedLimitDate,
      reason,
      sectionIdApp,
      userId,
      storeCode,
      createdAt,
      synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QualityAction &&
          other.id == this.id &&
          other.ean == this.ean &&
          other.actionType == this.actionType &&
          other.expiryDate == this.expiryDate &&
          other.calculatedLimitDate == this.calculatedLimitDate &&
          other.reason == this.reason &&
          other.sectionIdApp == this.sectionIdApp &&
          other.userId == this.userId &&
          other.storeCode == this.storeCode &&
          other.createdAt == this.createdAt &&
          other.synced == this.synced);
}

class QualityActionsCompanion extends UpdateCompanion<QualityAction> {
  final Value<int> id;
  final Value<String> ean;
  final Value<String> actionType;
  final Value<String> expiryDate;
  final Value<String?> calculatedLimitDate;
  final Value<String> reason;
  final Value<int?> sectionIdApp;
  final Value<String> userId;
  final Value<String> storeCode;
  final Value<DateTime> createdAt;
  final Value<bool> synced;
  const QualityActionsCompanion({
    this.id = const Value.absent(),
    this.ean = const Value.absent(),
    this.actionType = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.calculatedLimitDate = const Value.absent(),
    this.reason = const Value.absent(),
    this.sectionIdApp = const Value.absent(),
    this.userId = const Value.absent(),
    this.storeCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.synced = const Value.absent(),
  });
  QualityActionsCompanion.insert({
    this.id = const Value.absent(),
    required String ean,
    required String actionType,
    required String expiryDate,
    this.calculatedLimitDate = const Value.absent(),
    required String reason,
    this.sectionIdApp = const Value.absent(),
    required String userId,
    required String storeCode,
    this.createdAt = const Value.absent(),
    this.synced = const Value.absent(),
  })  : ean = Value(ean),
        actionType = Value(actionType),
        expiryDate = Value(expiryDate),
        reason = Value(reason),
        userId = Value(userId),
        storeCode = Value(storeCode);
  static Insertable<QualityAction> custom({
    Expression<int>? id,
    Expression<String>? ean,
    Expression<String>? actionType,
    Expression<String>? expiryDate,
    Expression<String>? calculatedLimitDate,
    Expression<String>? reason,
    Expression<int>? sectionIdApp,
    Expression<String>? userId,
    Expression<String>? storeCode,
    Expression<DateTime>? createdAt,
    Expression<bool>? synced,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ean != null) 'ean': ean,
      if (actionType != null) 'action_type': actionType,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (calculatedLimitDate != null)
        'calculated_limit_date': calculatedLimitDate,
      if (reason != null) 'reason': reason,
      if (sectionIdApp != null) 'section_id_app': sectionIdApp,
      if (userId != null) 'user_id': userId,
      if (storeCode != null) 'store_code': storeCode,
      if (createdAt != null) 'created_at': createdAt,
      if (synced != null) 'synced': synced,
    });
  }

  QualityActionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? ean,
      Value<String>? actionType,
      Value<String>? expiryDate,
      Value<String?>? calculatedLimitDate,
      Value<String>? reason,
      Value<int?>? sectionIdApp,
      Value<String>? userId,
      Value<String>? storeCode,
      Value<DateTime>? createdAt,
      Value<bool>? synced}) {
    return QualityActionsCompanion(
      id: id ?? this.id,
      ean: ean ?? this.ean,
      actionType: actionType ?? this.actionType,
      expiryDate: expiryDate ?? this.expiryDate,
      calculatedLimitDate: calculatedLimitDate ?? this.calculatedLimitDate,
      reason: reason ?? this.reason,
      sectionIdApp: sectionIdApp ?? this.sectionIdApp,
      userId: userId ?? this.userId,
      storeCode: storeCode ?? this.storeCode,
      createdAt: createdAt ?? this.createdAt,
      synced: synced ?? this.synced,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ean.present) {
      map['ean'] = Variable<String>(ean.value);
    }
    if (actionType.present) {
      map['action_type'] = Variable<String>(actionType.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (calculatedLimitDate.present) {
      map['calculated_limit_date'] =
          Variable<String>(calculatedLimitDate.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (sectionIdApp.present) {
      map['section_id_app'] = Variable<int>(sectionIdApp.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (storeCode.present) {
      map['store_code'] = Variable<String>(storeCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QualityActionsCompanion(')
          ..write('id: $id, ')
          ..write('ean: $ean, ')
          ..write('actionType: $actionType, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('calculatedLimitDate: $calculatedLimitDate, ')
          ..write('reason: $reason, ')
          ..write('sectionIdApp: $sectionIdApp, ')
          ..write('userId: $userId, ')
          ..write('storeCode: $storeCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ProductsTable products = $ProductsTable(this);
  late final $QualityActionsTable qualityActions = $QualityActionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [products, qualityActions];
}
