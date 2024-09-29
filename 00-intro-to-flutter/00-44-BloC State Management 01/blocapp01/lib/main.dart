import 'package:blocapp01/color_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.toAmber);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.toLightBlue);
              },
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text("BloC tanpa library"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: const Duration(microseconds: 100),
                width: 100,
                height: 100,
                color: snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
