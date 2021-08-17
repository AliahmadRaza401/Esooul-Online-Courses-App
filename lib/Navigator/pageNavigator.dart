import 'package:esooul/Screens/Courses/courses.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/Profile/Setting.dart';
import 'package:esooul/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class PageNavigator extends StatelessWidget {
  // const Navigator({Key? key}) : super(key: key);

  String page;
  PageNavigator({required this.page});
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (page == "home") {
      child = Home();
    } else if (page == "courses") {
      child = Courses();
    } else if (page == "favorite") {
      child = Profile();
    } else if (page == "profile") {
      child = Profile();
    } else if (page == "setting") {
      child = Settings();
    } else {
      return child = Home();
    }

    return Container(
      child: child,
    );
  }
}
