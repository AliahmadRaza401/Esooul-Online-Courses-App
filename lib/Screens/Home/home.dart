import 'package:esooul/Screens/Home/MostLikedCourse.dart';
import 'package:esooul/Screens/Home/NewFeatured.dart';
import 'package:esooul/Screens/Home/newlyFeatured2.dart';
import 'package:esooul/Screens/Home/slider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'boards.dart';
import 'categories.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff2F2F2F),
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .001,
                      left: MediaQuery.of(context).size.width * .01,
                      right: MediaQuery.of(context).size.width * .01,
                    ),
                    height: MediaQuery.of(context).size.height * .79,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue,
                            Colors.black,
                          ],
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                MediaQuery.of(context).size.width * .08),
                            topRight: Radius.circular(
                                MediaQuery.of(context).size.width * .08))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .003,
                      left: MediaQuery.of(context).size.width * .015,
                      right: MediaQuery.of(context).size.width * .015,
                    ),
                    height: MediaQuery.of(context).size.height * .789,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff2F2E2E),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                MediaQuery.of(context).size.width * .08),
                            topRight: Radius.circular(
                                MediaQuery.of(context).size.width * .08))),
                    child: ClipRRect(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Sliders(),
                            Boards(),
                            LikedCourses(),
                            NewlyFeaturedCourses(),
                            Categories(),
                            NewlyFeatured2()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
