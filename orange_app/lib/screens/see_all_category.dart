// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orange_app/screens/home_screen.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to show the title and arrow back buttom in the appbar
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ), //end appbar

      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //graphics catygory
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                  child: Image.asset('Assets/images/Graphics.png',
                      fit: BoxFit.cover),
                ),

                //Web Delevopment catygory
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                  child: Image.asset('Assets/images/Web Delevopment.png',
                      fit: BoxFit.cover),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //graphics catygory
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Image.asset(
                        'Assets/images/Programming Languages.png',
                        fit: BoxFit.cover),
                  ),

                  //Web Delevopment catygory
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Image.asset('Assets/images/Mobile Applications.png',
                        fit: BoxFit.cover),
                  ),
                ],
              ), //end row widget
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //graphics catygory
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Image.asset(
                        'Assets/images/Artificial intellgence.png',
                        fit: BoxFit.cover),
                  ),

                  //Web Delevopment catygory
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Image.asset('Assets/images/Network.png',
                        fit: BoxFit.cover),
                  ),
                ],
              ), //end row widget
            ),
          ], //end colum children
        ), //end colum widget
      ), //end padding
    );
  }
}
