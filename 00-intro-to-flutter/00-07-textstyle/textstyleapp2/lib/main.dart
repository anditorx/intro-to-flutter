import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Textstyle"),
        ),
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
                fontFamily: "CrashLandingBB",
                fontStyle: FontStyle.italic,
                fontSize: 50,
                decoration: TextDecoration.overline,
                decorationColor: Colors.deepOrange,
                decorationThickness: 5),
          ),
        ),
      ),
    );
  }
}
