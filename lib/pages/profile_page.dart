import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final token = authProvider.token;

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: token != null
            ? Text('Token: $token')
            : const Text('Nenhum token disponível'),
      ),
    );
  }
}
