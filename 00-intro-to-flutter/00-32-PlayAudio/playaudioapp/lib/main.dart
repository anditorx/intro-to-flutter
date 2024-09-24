import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer; // {{ edit_1 }}
  String durasi = "00.00.00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Playing music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    playSound(
                        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
                  },
                  child: Text("Play")),
              ElevatedButton(
                  onPressed: () {
                    pauseSound();
                  },
                  child: Text("Pause")),
              ElevatedButton(
                  onPressed: () {
                    stopSound();
                  },
                  child: Text("Stop")),
              ElevatedButton(
                  onPressed: () {
                    resumeSound();
                  },
                  child: Text("Resume")),
              Text(
                "Duration " + durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
