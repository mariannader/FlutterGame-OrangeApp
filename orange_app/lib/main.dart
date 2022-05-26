// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:orange_app/screens/start_screen.dart';

void main() {
  runApp(OrangeApp());
}

class OrangeApp extends StatelessWidget {
  const OrangeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
} //end stateless startScreen

