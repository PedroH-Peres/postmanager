import 'package:flutter/material.dart';

class Messagepage extends StatelessWidget {
  const Messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      child: Center(child: Text("Messages")),
    ),
    );
  }
}
