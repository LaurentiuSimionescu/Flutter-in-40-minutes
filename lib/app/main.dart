import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screens/screen_home.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "WhatsApp",
        theme: new ThemeData(
            primaryColor: new Color(0xff075E54),
            accentColor: new Color(0xff25D366)),
        debugShowCheckedModeBanner: true,
        home: new WhatsAppHome());
  }
}
