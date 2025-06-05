// lib/features/dashboard/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';
import 'package:quality_scan_pro/shared/widgets/app_drawer.dart'; // Importa el AppDrawer

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QualityScan Pro'),
        // El botón de logout del AppBar ya no es necesario si está en el Drawer.
        // Si deseas quitarlo, puedes eliminar la sección 'actions:' del AppBar.
      ),
      drawer: const AppDrawer(), // Usa el AppDrawer reutilizable
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_work_outlined, size: 100, color: Colors.grey[400]),
              const SizedBox(height: 20),
              Text(
                'Bienvenido al Dashboard',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              Text(
                'Usa el menú lateral (←) o el botón (+) para comenzar.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 30),
              // Puedes añadir aquí accesos directos a las funciones más usadas
              // si lo deseas, además del FAB y el Drawer. Por ejemplo:
              // ElevatedButton.icon(
              //   icon: const Icon(Icons.camera_alt_outlined),
              //   label: const Text('Iniciar Inspección Rápida'),
              //   onPressed: () => context.goNamed(AppRoutes.scanner),
              //   style: ElevatedButton.styleFrom(
              //     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.goNamed(AppRoutes.scanner);
        },
        tooltip: 'Escanear Producto',
        child: const Icon(Icons.qr_code_scanner_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}