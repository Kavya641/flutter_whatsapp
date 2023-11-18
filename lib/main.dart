import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Link Device App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // Add any additional theme configurations here
      ),
      home: WhatsAppLinkDevicePage(),
    );
  }
}

class WhatsAppLinkDevicePage extends StatefulWidget {
  @override
  State<WhatsAppLinkDevicePage> createState() => _WhatsAppLinkDevicePageState();
}

class _WhatsAppLinkDevicePageState extends State<WhatsAppLinkDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Link Device'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WhatsAppLinkDeviceImage(),
            SizedBox(height: 20),
            Text(
              'Use WhatsApp on Web, Desktop, and other devices.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Code to link a device to WhatsApp Web
              },
              child: Text('Link a device'),
            ),
          ],
        ),
      ),
    );
  }
}

class WhatsAppLinkDeviceImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/whatsapp.jpg',
      fit: BoxFit.cover,
    );
  }
}
