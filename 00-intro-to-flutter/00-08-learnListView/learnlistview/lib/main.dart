import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (var i = 0; i <= 15; i++) {
  //     widgets.add(Text(
  //       "Data ke - " + i.toString(),
  //       style: TextStyle(fontSize: 50),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    child: Text("Tambah Data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data ke - " + counter.toString(),
                          style: TextStyle(fontSize: 50),
                        ));
                        counter++;
                      });
                    }),
                ElevatedButton(onPressed: null, child: Text("Hapus Data"))
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
