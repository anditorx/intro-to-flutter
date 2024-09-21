import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan text field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                obscureText: false,
                maxLength: 5,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.adb)),
              ),
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                obscureText: false,
                maxLength: 5,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person),
                    prefixText: "Username : ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600)),
              ),
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                obscureText: false,
                maxLength: 5,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person),
                    prefixText: "Full Name : ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Full Name",
                    hintText: "Input full name",
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
