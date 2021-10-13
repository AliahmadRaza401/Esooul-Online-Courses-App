import 'package:esooul/Screens/Home/home_widgets.dart';
import 'package:flutter/material.dart';

import 'ielts_modules.dart';

class IeltsHome extends StatefulWidget {
  const IeltsHome({Key? key}) : super(key: key);

  @override
  _IeltsHomeState createState() => _IeltsHomeState();
}

var boardAreaData;
var data;
var userFName;
var userLName;

class _IeltsHomeState extends State<IeltsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SafeArea(
                child: Container(
                    child: SizedBox(
                        // height: MediaQuery.of(context).size.height *1,
                        child: Stack(children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff72C6EF),
                    Color(0xff004E8F),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                )),
            width: MediaQuery.of(context).size.width * .99,
            height: MediaQuery.of(context).size.height * .52,
          ),
          Container(
            padding: EdgeInsets.all(0).copyWith(top: 5),
            height: double.infinity,
            width: double.infinity,
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(20).copyWith(top: 0, bottom: 10),
                child: homeHeader(context, userFName),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: MediaQuery.of(context).size.height * .65,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IeltsModules()));
                      },
                      child: courseCard(
                        'assets/png/ieltscover.png',
                        'Canada',
                        'Canadian curriculum',
                        '2017- 2021 Ontario',
                        'Affordable online study Canada with Elite High School',
                      ),
                    ),
                    courseCard(
                      'assets/png/cambrigielts.png',
                      'Cambridge',
                      'British curriculum',
                      '2017- 2021 Ontario',
                      'Cambridge Assessment International Education ',
                    ),
                    courseCard(
                      'assets/png/austrailia.png',
                      'Australia',
                      'Australian curriculum',
                      '2017- 2021 Canberra',
                      'Cambridge Assessment International Education ',
                    ),
                    GestureDetector(
                      onTap: (){
                                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IeltsModules()));

                      },
                      child: courseCard(
                        'assets/png/esl.png',
                        'ESL',
                        'IELTS, TOFEL, DOLINGO',
                        '2017- 2021 Canberra',
                        'Cambridge Assessment International Education ',
                      ),
                    ),
                    courseCard(
                      'assets/png/pakistan.png',
                      'Pakistan',
                      'Pakistani curriculum',
                      '2017- 2021 Ontario',
                      'Cambridge Assessment International Education ',
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/png/Rectangle 122.png'),
                            fit: BoxFit.cover),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(height: 5,)
                  ],
                )),
              ),
            ]),
          )
        ]))))));
  }

  Widget courseCard(
      String img,String country, String curriculam, String session, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * .12,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(2, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .16,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('$img'),
                          fit: BoxFit.cover)
                          ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "$country",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "$curriculam",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                Text(
                  "$session",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      child: Wrap(
                        children: [
                          Text(
                            "$description",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Course 01",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                        Text(
                          "Course 02",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                        Text(
                          "Course 03",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Course 04",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                        Text(
                          "Course 05",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                        Text(
                          "Course 06",
                          style:
                              TextStyle(color: Color(0xffA19B9B), fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
