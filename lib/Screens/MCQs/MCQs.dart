import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Mcqs extends StatefulWidget {
  const Mcqs({Key? key}) : super(key: key);

  @override
  _McqsState createState() => _McqsState();
}

class _McqsState extends State<Mcqs> {
  final red = Colors.red;
  final green = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Header(btntext: 'MCQs',
      ),
          Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .002,
                left: MediaQuery.of(context).size.width * .015,
                right: MediaQuery.of(context).size.width * .015,
              ),
              // height: MediaQuery.of(context).size.height * .7,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.all(30).copyWith(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DefaultTabController(
                                length: 8,
                                child: TabBar(tabs: [
                                  tabs(1),
                                  tabs(2),
                                  tabs(3),
                                  tabs(4),
                                  tabs(6),
                                  tabs(7),
                                  tabs(8),
                                  tabs(9),
                                ])),
                          ),
                          mcq(
                              '01)  The water of crystallization is responsible for the',
                              'Melting points of crystals',
                              'Boiling points of crystals',
                              'Transition point of crystal',
                              'Shapes of crystals'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .07,
                          ),
                          videoContainer(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .03,
                          ),
                          Column(
                            children: [
                              Text(
                                "Skip and go to next question",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xff677A8F),
                                    radius: 25,
                                    child: Icon(Icons.arrow_back_ios_sharp),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .14,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .15,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .015,
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .015),
                                        primary: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Text(
                                        'Submit Quiz',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  CircleAvatar(
                                    backgroundColor: Color(0xffD4D4D4),
                                    radius: 25,
                                    child: Icon(Icons.arrow_forward_ios_sharp),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ))
                ]),
              )),
        ]),
      ),
    );
  }

  Widget videoContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10).copyWith(right: MediaQuery.of(context).size.width *.1),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .09,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/png/video.png"),
                                fit: BoxFit.cover)),
                        child: Image.asset("assets/png/play.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Topic 01-lorem isum",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height *.008,),
                          Text(
                            "Click here for video",
                            style: TextStyle(color: Colors.black),
                          ),
                          
                          
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget tabs(int number) {
    return Text(
      "$number",
      style: TextStyle(color: Colors.black),
    );
  }

  Widget mcq(
    String question,
    String A,
    String B,
    String C,
    String D,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                "$question",
                style: TextStyle(color: Colors.black),
              ))
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Color(0xffD4D4D4),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text(
                "$A",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Color(0xffD4D4D4),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text(
                "$B",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: red,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text(
                "$C",
                style: TextStyle(color: red),
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: green,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text("$D", style: TextStyle(color: green))
            ],
          ),
        ],
      ),
    );
  }
}
