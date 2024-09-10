import 'package:flutter/material.dart';

void main() {
  runApp(new MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Ini Title pada appbar")),
        body: const Center(child: Text("Ini text pada body")),
      ),
    );
  }
}
