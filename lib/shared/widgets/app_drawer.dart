// lib/shared/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quality_scan_pro/core/di/service_locator.dart';
import 'package:quality_scan_pro/core/navigation/app_router.dart';
import 'package:quality_scan_pro/shared/services/auth_service.dart';
// Asegúrate que 'quality_scan_pro' coincida con el 'name:' en tu pubspec.yaml

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String _appVersion = 'Cargando versión...';
  final AuthService _authService = sl<AuthService>();

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
  }

  Future<void> _loadAppVersion() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      if (mounted) {
        setState(() {
          _appVersion = 'V ${packageInfo.version}+${packageInfo.buildNumber}';
        });
      }
    } catch (e) {
      print('Error al cargar la versión de la app en AppDrawer: $e');
      if (mounted) {
        setState(() {
          _appVersion = 'V desconocida';
        });
      }
    }
  }

  void _navigateTo(BuildContext context, String routeName) {
    Navigator.pop(context); // Cierra el drawer SIEMPRE antes de navegar
    context.goNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    final String? currentRouteName = GoRouterState.of(context).name;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              'QualityScan Pro',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text('Dashboard'),
            selected: currentRouteName == AppRoutes.dashboard,
            onTap: () => _navigateTo(context, AppRoutes.dashboard),
          ),
          ListTile(
            leading: const Icon(Icons.qr_code_scanner_rounded),
            title: const Text('Escanear / Iniciar Inspección'),
            selected: currentRouteName == AppRoutes.scanner,
            onTap: () => _navigateTo(context, AppRoutes.scanner),
          ),
          ListTile(
            leading: const Icon(Icons.document_scanner_outlined),
            title: const Text('Manejo FFVV / No Escaneable'),
            selected: currentRouteName == AppRoutes.ffvv,
            onTap: () => _navigateTo(context, AppRoutes.ffvv),
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart_rounded),
            title: const Text('Ver Reportes'),
            selected: currentRouteName == AppRoutes.reports,
            onTap: () => _navigateTo(context, AppRoutes.reports),
          ),
          ListTile(
            leading: const Icon(Icons.summarize_outlined),
            title: const Text('Consolidado Mensual'),
            selected: currentRouteName == AppRoutes.monthlySummary,
            onTap: () => _navigateTo(context, AppRoutes.monthlySummary),
          ),
          ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: const Text('Finalizar Sección (0 FE)'),
            selected: currentRouteName == AppRoutes.finalizeSectionZeroFE,
            onTap: () => _navigateTo(context, AppRoutes.finalizeSectionZeroFE),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person_outline_rounded),
            title: const Text('Perfil de Usuario'),
            selected: currentRouteName == AppRoutes.profile,
            onTap: () => _navigateTo(context, AppRoutes.profile),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: () async {
              Navigator.pop(context);
              await _authService.logout();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Cerrando sesión...')),
                );
                await Future.delayed(const Duration(milliseconds: 300));
                context.goNamed(AppRoutes.login);
              }
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _appVersion,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodySmall?.color?.withOpacity(0.7),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '© OrveDevs',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodySmall?.color?.withOpacity(0.7),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}