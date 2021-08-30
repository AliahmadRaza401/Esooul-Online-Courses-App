import 'package:esooul/Screens/Courses/courses_widget.dart';
import 'package:esooul/Screens/Paper/paper_answers_video.dart';
import 'package:esooul/Widgets/header.dart';

import 'package:esooul/Widgets/my_slide_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(children: [
            Header(
              btntext: 'Courses',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/physics9th.png",
                          subject: "Physics class 9th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 5K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/maths10th.png",
                          subject: "Maths class 10th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 3K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/chemistry10.png",
                          subject: "Chemistry class 10th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 4K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/physics9th.png",
                          subject: "Physics class 9th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 5K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/maths10th.png",
                          subject: "Maths class 10th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 3K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      CoursesWidget(
                          imgPath: "assets/png/chemistry10.png",
                          subject: "Chemistry class 10th",
                          board:
                              "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                          likes: "Likes 4K",
                          date: "Created 21 jun 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
<<<<<<< HEAD
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => PaperAnswerVideo()),
                      //       );
                      //     },
                      //     child: Text("press me"))
=======
            
>>>>>>> d5daac0e177964a07962bc047f880e4ec02034fb
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
