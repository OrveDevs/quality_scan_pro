// lib/core/service_locator.dart

import 'package:get_it/get_it.dart';
// Importación corregida para apuntar a la ubicación de AuthService
import 'package:quality_scan_pro/shared/services/auth_service.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  print('ServiceLocator: Registrando servicios...');
  sl.registerLazySingleton<AuthService>(() => AuthService());
  print('ServiceLocator: AuthService registrado.');
}