// ignore_for_file: prefer_const_constructors, duplicate_ignore, implementation_imports, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orange_app/screens/login.dart';
import 'package:orange_app/screens/screen_three.dart';
import 'package:orange_app/screens/sign_up.dart';
import 'package:orange_app/screens/verify_email.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Center(
            child: Image(
              image: AssetImage('Assets/images/lock.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50.0, right: 50),
            child: Center(
              child: Text(
                'Please enter your email address to recieve vervication code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      ),
                      child: Container(
                        width: 335.0,
                        height: 56.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white),
                          color: Color(0xFFE65100),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: MaterialButton(
                          //send code to user email if it exists if not then do nothing
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => VerifyEmail(),
                            ),
                          ),
                          child: Text(
                            "Send",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ], //end children
      ),
    );
  }
}
