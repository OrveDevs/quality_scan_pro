// lib/core/navigation/app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quality_scan_pro/features/auth/login_screen.dart';
import 'package:quality_scan_pro/features/dashboard/dashboard_screen.dart';
import 'package:quality_scan_pro/features/scanner/scanner_screen.dart'; // Asegúrate que esta pantalla exista
import 'package:quality_scan_pro/features/product_detail/product_detail_screen.dart'; // Nueva importación
import 'package:quality_scan_pro/shared/widgets/app_drawer.dart';
// Asegúrate que 'quality_scan_pro' coincida con el 'name:' en tu pubspec.yaml

class AppRoutes {
  static const String login = 'login';
  static const String dashboard = 'dashboard';
  static const String scanner = 'scanner';
  static const String productDetail = 'productDetail';
  static const String ffvv = 'ffvv';
  static const String reports = 'reports';
  static const String monthlySummary = 'monthlySummary';
  static const String profile = 'profile';
  static const String finalizeSectionZeroFE = 'finalizeSectionZeroFE';
}

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/login',
        name: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        name: AppRoutes.dashboard,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: '/scanner',
        name: AppRoutes.scanner,
        builder: (context, state) => const ScannerScreen(), // Usamos la pantalla real
      ),
      GoRoute(
        path: '/product-detail/:ean', // ean es el parámetro de ruta
        name: AppRoutes.productDetail,
        builder: (context, state) {
          final ean = state.pathParameters['ean'];
          if (ean == null) {
            return const Scaffold(
                body: Center(child: Text('Error: EAN del producto no proporcionado a la ruta.'))
            );
          }
          return ProductDetailScreen(ean: ean); // Pasamos el ean a la pantalla
        },
      ),
      GoRoute(
        path: '/ffvv',
        name: AppRoutes.ffvv,
        builder: (context, state) => const PlaceholderScreen(title: 'Manejo FFVV / Sin EAN'),
      ),
      GoRoute(
        path: '/reports',
        name: AppRoutes.reports,
        builder: (context, state) => const PlaceholderScreen(title: 'Reportes'),
      ),
      GoRoute(
        path: '/monthly-summary',
        name: AppRoutes.monthlySummary,
        builder: (context, state) => const PlaceholderScreen(title: 'Consolidado Mensual'),
      ),
      GoRoute(
        path: '/finalize-section-zero',
        name: AppRoutes.finalizeSectionZeroFE,
        builder: (context, state) => const PlaceholderScreen(title: 'Finalizar Sección (0 FE)'),
      ),
      GoRoute(
        path: '/profile',
        name: AppRoutes.profile,
        builder: (context, state) => const PlaceholderScreen(title: 'Perfil de Usuario'),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Error de Ruta')),
      body: Center(
        child: Text('404 - Ruta no encontrada: ${state.uri.toString()}'),
      ),
    ),
  );
}

// Widget placeholder simple con AppDrawer (si aún lo usas para otras rutas)
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Pantalla: $title\n(En construcción)',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}