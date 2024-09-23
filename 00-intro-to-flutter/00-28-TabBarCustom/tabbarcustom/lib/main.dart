import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          // color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: [
        Tab(icon: Icon(Icons.comment), text: "Comment"),
        Tab(icon: Icon(Icons.computer), text: "Computer"),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.green.shade50,
                title: Text("TabBar Example"),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child:
                      Container(color: Colors.green.shade50, child: myTabBar),
                )),
            body: TabBarView(children: [
              Center(
                child: Text("Tab 1 - Comment"),
              ),
              Center(
                child: Text("Tab 2 - Computer"),
              ),
            ]),
          )),
    );
  }
}
