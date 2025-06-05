// lib/main.dart
import 'package:flutter/material.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';
// Importa el service locator desde su nueva ubicación
import 'package:quality_scan_pro/core/di/service_locator.dart';
// Asegúrate que 'quality_scan_pro' coincida con el 'name:' en tu pubspec.yaml

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator(); // Llama a la configuración de GetIt
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'QualityScan Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router, // Asegúrate que AppRouter esté definido
    );
  }
}