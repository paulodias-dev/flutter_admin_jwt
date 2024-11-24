import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/auth_provider.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) {
        final isAuthenticated = authProvider.token != null;

        return MaterialApp(
          title: 'Admin App',
          theme: ThemeData(primarySwatch: Colors.blue),
          initialRoute: isAuthenticated ? '/dashboard' : '/login',
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
