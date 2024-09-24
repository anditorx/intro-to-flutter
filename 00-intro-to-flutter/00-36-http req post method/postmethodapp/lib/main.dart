import 'package:flutter/material.dart';
import 'package:postmethodapp/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demp - POST"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? '${postResult?.id} | ${postResult?.name} | ${postResult?.job} | ${postResult?.created}'
                  : 'No data'),
              ElevatedButton(
                  onPressed: () {
                    PostResult.connectToAPI("Andi", "Dokter").then((value) {
                      postResult = value;
                      setState(() {});
                      print(value);
                    });
                  },
                  child: Text("POST"))
            ],
          ),
        ),
      ),
    );
  }
}
