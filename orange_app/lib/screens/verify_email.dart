// ignore_for_file: prefer_const_constructors, duplicate_ignore, implementation_imports, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orange_app/screens/forget_password.dart';
import 'package:orange_app/screens/new_password.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify Your Email',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change  color here
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Center(
            child: Image(
              image: AssetImage('Assets/images/VerifyEmail.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50.0, right: 50),
            child: Center(
              child: Text(
                'please enter the 4-digit code sent to',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50.0, right: 50),
            child: Center(
              child: Text(
                'mariannader@gmail.com',
                style: TextStyle(
                  color: Color(0xFFE65100),
                  fontSize: 16,
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
                  labelText: 'Enter Your Verify Code',
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5, left: 30, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
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
                              builder: (context) => NewPassword(),
                            ),
                          ),
                          child: Text(
                            "Verify",
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
