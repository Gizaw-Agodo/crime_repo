import 'package:crime_reporter/screens/login.dart';
import 'package:crime_reporter/screens/signup.dart';
import 'package:crime_reporter/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:WelcomeScreen(),
      routes: {
        '/login':(context)=>LoginPage(),
        '/user/signup': (context)=>SignUpPage(),
      },
    );
  }
}