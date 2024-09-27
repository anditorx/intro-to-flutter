import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txtController = TextEditingController(text: "No Name");
  bool isSwitchOn = false;

  // NOTE: Save data for save to shared preferences
  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("@sp_name", txtController.text);
    pref.setBool("@isSwitchOn", isSwitchOn);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("@sp_name") ?? "No Name";
  }

  Future<bool> getIsSwitchOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("@isSwitchOn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Preferences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: txtController,
              ),
              Switch(
                  value: isSwitchOn,
                  onChanged: (newValue) {
                    isSwitchOn = newValue;
                    setState(() {});
                  }),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text("Save")),
              ElevatedButton(
                  onPressed: () {
                    getName().then((val) {
                      txtController.text = val;
                      setState(() {});
                    });
                    getIsSwitchOn().then((val) {
                      isSwitchOn = val;
                      setState(() {});
                    });
                  },
                  child: Text("Load")),
            ],
          ),
        ),
      ),
    );
  }
}
