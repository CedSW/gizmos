import 'package:flutter/material.dart';
import 'package:gizmos/screen/game_screen.dart';
import 'package:gizmos/service/service_locator.dart';

void main() {
  setupLocators();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gizmos',
      home: GameScreen(),
    );
  }
}