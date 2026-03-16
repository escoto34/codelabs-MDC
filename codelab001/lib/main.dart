import 'package:flutter/material.dart';
import 'login.dart'; // Importa tu archivo de login
import 'home.dart';  // Importa tu archivo de home

void main() {
  runApp(const ShrineApp());
}

class ShrineApp extends StatelessWidget {
  const ShrineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      debugShowCheckedModeBanner: false,
      // Aquí definimos que la aplicación inicie siempre en el Login
      home: const LoginPage(), 
      // Definimos las rutas para que el Navigator sepa a dónde ir
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}