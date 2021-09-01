import 'dart:convert';
import 'package:esooul/Screens/Courses/courses_widget.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animations/loading_animations.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  var jsondata;
  var courseslist = [];
  bool loading=true;
  @override
  void initState() {
    getcourses();
  }

  getcourses() async {
    print("-----------------");
    var response = await http.get(
      Uri.parse(coursesApi),
      headers: headers,
    );
    jsondata = jsonDecode(response.body);
    print(jsondata);

    if (jsondata['status'] == 200) {
      var data = jsondata['data'];
      for (var i in data) {
        CoursesModel courses = CoursesModel(
            i['id'],
            i['title'],
            i['grade'],
            i['image'],
            i['description'],
            i['original_price'],
            i['price_to_show'],
            i['category'],
            i['instructor'],
            i['created_at']);
        courseslist.add(courses);
        setState(() {
          loading =false;
        });
      }
    } else {
      print("nO Data");
    }

     print(courseslist[0].description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
                  loading==true ? LoadingBounceAnimation(context) : ListView(
                        shrinkWrap: true,
                                physics:ClampingScrollPhysics(),
                        children: [
                            ListView.builder(
                               shrinkWrap: true,
                                physics:ClampingScrollPhysics(),
                                itemCount: courseslist.length,
                                itemBuilder: (context, i) {
                                  return CoursesWidget(
                                      imgPath: courseslist[i].image ==null ? "":courseslist[i].image,
                                      subject: courseslist[i].title ==null ? "":courseslist[i].title,
                                      grade: courseslist[i].grade ==null ? "":courseslist[i].grade,
                                      board: courseslist[i].desc ==null ? "":courseslist[i].desc,
                                      likes: courseslist[i].orgPrice ==null ? "":courseslist[i].orgPrice,
                                      date: courseslist[i].createdAt ==null ? "":courseslist[i].createdAt
                                      );
                                }),
                        ],
                      )
                    
                      // CoursesWidget(
                      //     imgPath: "assets/png/physics9th.png",
                      //     subject: "Physics class 9th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 5K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.018,
                      // ),
                      // CoursesWidget(
                      //     imgPath: "assets/png/maths10th.png",
                      //     subject: "Maths class 10th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 3K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.018,
                      // ),
                      // CoursesWidget(
                      //     imgPath: "assets/png/chemistry10.png",
                      //     subject: "Chemistry class 10th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 4K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.018,
                      // ),
                      // // ListView.builder(
                      // // itemBuilder: getcourses(),
                      // // itemCount: jsondata.length,
                      // // ),
                      // CoursesWidget(
                      //     imgPath: "assets/png/physics9th.png",
                      //     subject: "Physics class 9th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 5K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.018,
                      // ),
                      // CoursesWidget(
                      //     imgPath: "assets/png/maths10th.png",
                      //     subject: "Maths class 10th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 3K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.018,
                      // ),
                      // CoursesWidget(
                      //     imgPath: "assets/png/chemistry10.png",
                      //     subject: "Chemistry class 10th",
                      //     board:
                      //         "Board of intermediate and Secondary\nEducation(BISE) Lahore",
                      //     likes: "Likes 4K",
                      //     date: "Created 21 jun 2021"),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.05,
                      // ),
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

class CoursesModel {
  var id;
  var title;
  var grade;
  var image;
  var desc;
  var orgPrice;
  var priceToShow;
  var category;
  var instructor;
  var createdAt;
  var status;
  CoursesModel(
    this.id,
    this.title,
    this.grade,
    this.image,
    this.desc,
    this.orgPrice,
    this.priceToShow,
    this.category,
    this.instructor,
    this.createdAt,
  );
}
