import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImageView(
            data: 'This QR code has an embedded image as well',
            version: QrVersions.auto,
            size: 320,
            backgroundColor: Colors.purple.shade200,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            gapless: false,
            embeddedImage: AssetImage('assets/img/logo.png'),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(80, 80),
            ),
          ),
        ),
      ),
    );
  }
}
