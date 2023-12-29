import 'package:flutter/material.dart';

class Configpage extends StatelessWidget {
  const Configpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text("Configurations")),
      ),
    );
  }
}
