import 'package:flutter/material.dart';
import 'package:getmethodapp/post_result_model.dart';
import 'package:getmethodapp/user_model.dart';

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
  User? user;

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
              Text((user != null) ? '${user?.id} | ${user?.email}' : 'No data'),
              ElevatedButton(
                  onPressed: () {
                    User.connectToAPI("3").then((value) {
                      user = value;
                      setState(() {});
                      print(value);
                    });
                  },
                  child: Text("GET"))
            ],
          ),
        ),
      ),
    );
  }
}
