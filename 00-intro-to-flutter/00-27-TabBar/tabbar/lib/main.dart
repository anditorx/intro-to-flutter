import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("TabBar Example"),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.comment), text: "Comment"),
                  Tab(
                      icon: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage(
                          "assets/icons/ic_man.png",
                        ),
                      ),
                      text: "Inspection"),
                  Tab(icon: Icon(Icons.computer), text: "Computer"),
                  Tab(text: "News"),
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Text("Tab 1 - Comment"),
              ),
              Center(
                child: Text("Tab 2 - Inspection"),
              ),
              Center(
                child: Text("Tab 3 - Computer"),
              ),
              Center(
                child: Text("Tab 4 - News"),
              ),
            ]),
          )),
    );
  }
}
