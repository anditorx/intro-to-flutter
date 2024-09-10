import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number = 0;

  void pressBtnAdd() {
    setState(() {
      number++;
    });
  }

  void pressResetBtn() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString()),
              ElevatedButton(
                child: Text('Tambah Bilangan'),
                onPressed: pressBtnAdd,
              ),
              ElevatedButton(
                child: Text('Reset'),
                onPressed: pressResetBtn,
              )
            ],
          ),
        ),
      ),
    );
  }
}
