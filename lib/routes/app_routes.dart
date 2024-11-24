import 'package:flutter/material.dart';
import '../layouts/admin_layout.dart';
import '../pages/dashboard_page.dart';
import '../pages/profile_page.dart';
import '../pages/login_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/login': (context) => const LoginPage(),
    '/dashboard': (context) => const AdminLayout(child: DashboardPage()),
    '/profile': (context) => const AdminLayout(child: ProfilePage()),
  };
}
