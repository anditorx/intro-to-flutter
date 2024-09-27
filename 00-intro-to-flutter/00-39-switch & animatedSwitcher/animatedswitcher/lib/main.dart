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
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.grey, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(duration: Duration(seconds: 1), child: myWidget),
              Switch(
                  value: isOn,
                  activeColor: Colors.blue.shade500,
                  inactiveTrackColor: Colors.grey.shade400,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      } else {
                        myWidget = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
