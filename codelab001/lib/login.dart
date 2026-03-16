import 'package:flutter/material.dart';
import 'home.dart';
import 'colors.dart';

import 'models/product.dart';
import 'models/products_repository.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ), // Padding lateral para que no toque los bordes
                children: [
                  Column(
  children: <Widget>[
    Image.asset('assets/diamond.png'),
    const SizedBox(height: 16.0),
    Text(
      'SHRINE',
      style: Theme.of(context).textTheme.headlineMedium,
    ),
  ],
),
                  const SizedBox(height: 120),
                  // TODO: Remove filled: true values (103)


                  // --- Primer Campo de Texto ---
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: 'Username',
                    ),
                  ),
                  // spacer
                  const SizedBox(height: 12.0),
                  // [Password]
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),

                  // TODO: Add button bar (101)
                  OverflowBar(
                    alignment: MainAxisAlignment.end,
                    // TODO: Add a beveled rectangular border to CANCEL (103)
                    children: <Widget>[
                      // TODO: Add buttons (101)
                      // TODO: Add buttons (101)
                      TextButton(
                        child: const Text('CANCEL'),
                        onPressed: () {
                          _usernameController.clear();
                          _passwordController.clear();
                        },
                      ),
                      // TODO: Add an elevation to NEXT (103)
                      // TODO: Add a beveled rectangular border to NEXT (103)
                      ElevatedButton(
                        child: const Text('NEXT'),
                        onPressed: () {
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const HomePage()),);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
