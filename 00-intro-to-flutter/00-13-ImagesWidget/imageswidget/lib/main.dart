import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(
              // NOTE: Image with url
              //   image: NetworkImage(
              //       "https://w0.peakpx.com/wallpaper/1002/951/HD-wallpaper-jujutsu-kaisen-op-strong-anime-gojo-satoru-love.jpg"),
              //   fit: BoxFit.contain,
              //   repeat: ImageRepeat.repeat,
              // ),
              // NOTE: Image with asset
              image: AssetImage("assets/images/gojo.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
