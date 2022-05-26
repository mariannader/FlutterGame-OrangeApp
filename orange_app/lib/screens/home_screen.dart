// ignore_for_file: prefer_const_literals_to_create_immutables, implementation_imports, unnecessary_import, prefer_const_constructors, duplicate_ignore, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orange_app/screens/profile.dart';
import 'package:orange_app/screens/see_all_category.dart';
import 'package:orange_app/screens/web_development_course_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('Assets/images/LogoODC.png', fit: BoxFit.cover),
      ),
      body: Column(children: [
        // ignore: prefer_const_constructors
        //design the code course box
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          // padding: const EdgeInsets.all(3.0),
          width: 390.0,
          height: 190.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blueAccent),
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 90, left: 20),
            child: Column(
              children: [
                Text(
                  "Enter the Code to Get your course",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      //border: OutlineInputBorder(),
                      // labelText: 'Enter Code',
                      hintText: 'Enter Course Code',
                      hintStyle:
                          TextStyle(fontSize: 16.0, color: Colors.white10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //Top Category text

        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(top: 10, right: 90, left: 20),
                // color: Colors.red,
                child: Row(
                  children: [
                    Text(
                      'Top Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SeeAllCategory(),
                          ),
                        ),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFE65100),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        //category continer
        Container(
          // margin: const EdgeInsets.all(15.0),
          // padding: const EdgeInsets.all(3.0),
          width: 390.0,
          height: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('Assets/images/Graphics.png', fit: BoxFit.cover),
              Image.asset('Assets/images/Programming Languages.png',
                  fit: BoxFit.cover),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WebDevelopmentCourseScreen(),
                  ),
                ),
                child: Image.asset('Assets/images/Web Delevopment.png',
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ), //end container category

        //Top Category text

        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(right: 90, left: 20),
                // color: Colors.red,
                child: Text(
                  'New Courses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),

        //category continer
        Container(
          // margin: const EdgeInsets.all(15.0),
          // padding: const EdgeInsets.all(3.0),
          width: 390.0,
          height: 140.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('Assets/images/Graphics.png', fit: BoxFit.cover),
              Image.asset('Assets/images/Programming Languages.png',
                  fit: BoxFit.cover),
              Image.asset('Assets/images/Web Delevopment.png',
                  fit: BoxFit.cover),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
                child: Image.asset('Assets/images/Activehome.png',
                    fit: BoxFit.cover),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
                child: Image.asset('Assets/images/book-open.png',
                    fit: BoxFit.cover),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                ),
                child:
                    Image.asset('Assets/images/Profile.png', fit: BoxFit.cover),
              ),
              label: '',
            ),
          ]),
        ),
        //end container category
      ]),
    );
  }
}
