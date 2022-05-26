// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_app/screens/screen_two.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
              //to eable the image logo to be as a button
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenTwo(),
                  ),
                ),
                child: Image(
                  image: AssetImage('Assets/images/OrangeLogo.png'),
                ),
              ),
            ),
          ], //end children
        ),
      ),
    );
  }
}
