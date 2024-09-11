import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainApp> {
  String txtMassage = "Ini adalah message";

  void funcPressBtn() {
    setState(() {
      txtMassage = "Button sudah di tekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(txtMassage),
              ElevatedButton(
                  // anonymous method
                  onPressed: () {
                    setState(() {
                      txtMassage = "Button sudah di tekan";
                    });
                  },
                  child: Text("Tekan saya"))
            ],
          ),
        ),
      ),
    );
  }
}
