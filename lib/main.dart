// lib/main.dart
import 'package:flutter/material.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';
import 'package:quality_scan_pro/core/di/service_locator.dart';
import 'package:quality_scan_pro/shared/services/data_import_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  // No llamamos a la importación aquí directamente, lo haremos en un widget de carga
  runApp(const MyAppLoader()); // Cambiamos a un widget que maneje la carga
}

class MyAppLoader extends StatelessWidget {
  const MyAppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final dataImportService = sl<DataImportService>();

    return FutureBuilder(
      // Ejecutamos la importación aquí
      future: dataImportService.importProductsFromCsvIfNeeded(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            (dataImportService.importProgressNotifier.value != null &&
                dataImportService.importProgressNotifier.value! < 1.0 &&
                dataImportService.importProgressNotifier.value! >= 0.0)) {
          // Muestra una pantalla de carga mientras se importa
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: 20),
                    ValueListenableBuilder<double?>(
                      valueListenable: dataImportService.importProgressNotifier,
                      builder: (context, progress, child) {
                        if (progress == null) return const Text('Iniciando preparación de datos...');
                        if (progress == -1.0) return const Text('Error al preparar datos.', style: TextStyle(color: Colors.red));
                        return Text('Preparando datos iniciales... ${(progress * 100).toStringAsFixed(0)}%');
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        if (snapshot.hasError || (dataImportService.importProgressNotifier.value == -1.0) ) {
          // Muestra una pantalla de error si la importación falla
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Text('Error al inicializar la aplicación: ${snapshot.error ?? "Error en importación."}'),
              ),
            ),
          );
        }

        // Si la importación terminó (o no era necesaria), muestra la app principal
        return const MyApp();
      },
    );
  }
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
      routerConfig: AppRouter.router,
    );
  }
}