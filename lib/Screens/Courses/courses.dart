import 'package:esooul/Screens/Authentication/forget_password.dart';
import 'package:esooul/Screens/Authentication/login.dart';
import 'package:esooul/Screens/Authentication/pin_code.dart';
import 'package:esooul/Screens/Authentication/signup.dart';
import 'package:esooul/Screens/Paper/objective_subjective.dart';
import 'package:esooul/Screens/Paper/start_paper.dart';
import 'package:esooul/Screens/Paper/subjective_papers.dart';
import 'package:esooul/Screens/Paper/topic_list.dart';
import 'package:esooul/Screens/Paper/view_instructions.dart';
import 'package:esooul/Screens/WishList/wishList.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
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
          color: Color(0xff2F2F2F),
          child: ListView(children: [
            Header(),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .0,
                left: MediaQuery.of(context).size.width * .01,
                right: MediaQuery.of(context).size.width * .01,
              ),
              height: MediaQuery.of(context).size.height * .9,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08))),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  BackButtonWidget(iconPath: "assets/png/backbuttonimage.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      Text(
                        "Select a Course",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .002,
                        width: MediaQuery.of(context).size.width * .65,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.black,
                              Colors.white38,
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  _courseContainer(
                      "assets/png/candageography.png",
                      "Issues in Canadian Geography",
                      "Ponum Ghazanfar",
                      "History",
                      "1000",
                      "1500",
                      "2K",
                      "12 jun 2021",
                      isFavorite),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  _courseContainer(
                      "assets/png/candageography.png",
                      "Issues in Canadian Geography",
                      "Ponum Ghazanfar",
                      "History",
                      "1000",
                      "1500",
                      "2K",
                      "12 jun 2021",
                      isFavorite),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  ElevatedButton(
                    child: Text('Objective Subjective'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ObjectiveSubjective()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text('Subjective Papers'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubjectivePapers()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text('View Instructions'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewInstructions()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text('Topic List'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TopicList()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text('Start paper'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StartPaper()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  _courseContainer(
      String imagePath,
      String subject,
      String author,
      String category,
      String disountprice,
      String price,
      String likes,
      String date,
      bool isFavorite) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff3D3D3D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //1st Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(imagePath,
                      height: MediaQuery.of(context).size.height * 0.090),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(subject),
                  Text(
                    author,
                    style: TextStyle(color: Color(0xffFFD643)),
                  ),
                  Row(
                    children: [
                      Text("Category - $category"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.020,
                      ),
                      Text(
                        disountprice,
                        style: TextStyle(color: Color(0xff00B0D7)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            color: Color(0xff949494),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.020),
          //2nd row
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.045,
                  decoration: BoxDecoration(
                    color: Color(0xff646464),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.07,
                            height: MediaQuery.of(context).size.height * 0.040,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff464646),
                            ),
                            child: Center(
                              child: Text("01"),
                            ),
                          ),
                        ],
                      ),
                      Text(likes),
                      Text("Created $date"),
                      Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
