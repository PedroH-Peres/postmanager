import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purpleAccent,
        width: double.infinity,
        height: double.infinity,
        child: const Column(
          children: [
            Card(
              child: Column(
                children: [
                  Text("Teste")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}