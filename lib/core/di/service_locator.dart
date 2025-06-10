// lib/core/di/service_locator.dart
import 'package:get_it/get_it.dart';
import 'package:quality_scan_pro/shared/services/auth_service.dart';
import 'package:quality_scan_pro/core/database/app_db.dart';
import 'package:quality_scan_pro/shared/services/data_import_service.dart'; // Importar

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  print('ServiceLocator: Registrando servicios...');

  sl.registerLazySingleton<AuthService>(() => AuthService());
  print('ServiceLocator: AuthService registrado.');

  final appDatabase = AppDatabase(); // Creamos la instancia primero
  sl.registerSingleton<AppDatabase>(appDatabase);
  print('ServiceLocator: AppDatabase registrada.');

  // Registramos DataImportService y le pasamos la instancia de AppDatabase
  sl.registerLazySingleton<DataImportService>(() => DataImportService(appDatabase));
  print('ServiceLocator: DataImportService registrado.');
}