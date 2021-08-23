import 'dart:async';
import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  void nextScreen() {
    Timer(Duration(seconds: 3), checkFirstSeen);
  }

  Future checkFirstSeen() async {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (context) => new LogIn()
    ));
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool _seen = (prefs.getBool('seen') ?? false);

    // if (_seen) {
    //   Navigator.of(context).pushReplacement(
    //       new MaterialPageRoute(builder: (context) => new Login()));
    // } else {
    //   await prefs.setBool('seen', true);
    //   Navigator.of(context).pushReplacement(
    //       new MaterialPageRoute(builder: (context) => new OnBoarding()));
    // }
  }

  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  @override
  void afterFirstLayout(BuildContext context) => LogIn();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.bottomCenter,
            colors: [
              Color(0xff3F3F3F),
              Colors.black,
            ],
            radius: 1.0,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/png/elogo.png",
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ),
    );
  }
}
