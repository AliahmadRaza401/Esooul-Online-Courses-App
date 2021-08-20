import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Mcqs extends StatefulWidget {
  const Mcqs({ Key? key }) : super(key: key);

  @override
  _McqsState createState() => _McqsState();
}

class _McqsState extends State<Mcqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Header(),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  
                  left: MediaQuery.of(context).size.width * .01,
                  right: MediaQuery.of(context).size.width * .01,
                ),
                height: MediaQuery.of(context).size.height * .71,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.black,
                      ],
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35)
                            ),
              ),
              Container(
                
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height *.002,
                  left: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .72,
                width: double.infinity,
                decoration: BoxDecoration(
               
                  color: Color(0xff3D3D3D),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:
                              BackButtonWidget(iconPath: 'assets/png/fvrt.png'),
                        ),
                        Container(
                          padding: EdgeInsets.all(30).copyWith(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: DefaultTabController(
                                  
                                    length: 8,
                                    child: TabBar(
                                      tabs: [
                                        tabs(1),
                                        tabs(2),
                                        tabs(3),
                                        tabs(4),
                                        tabs(6),
                                        tabs(7),
                                        tabs(8),
                                        tabs(9),
                                      ],
                                    )),
                              ),
                              // Divider(
                              //   color: Colors.black,
                              // ),
                              mcq(
                                'What is the meaning of UI UX Design ?',
                                'User Introface and User Experience',
                                'User Introface and User Experience',
                                'User Interfice and Using Experience',
                                'User Interface and User Experience',
                                'Using Interface and Using Experience',
                              ),
                              videoContainer(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        primary: Colors.white,
                                        side: BorderSide(
                                            width: 1, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Text(
                                        'Submit Quiz',
                                        style:
                                            TextStyle(color: Color(0xff3550DC)),
                                      )),
                                  CircleAvatar(
                                    backgroundColor: Color(0xffD4D4D4),
                                    radius: 25,
                                    child: Icon(Icons.arrow_forward_ios_sharp),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
Widget videoContainer(){
  return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        width: MediaQuery.of(context).size.width *
                                            .42,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                             
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .13,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .38,
                                              decoration: BoxDecoration(
                                                
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/png/video.png"),
                                                          fit: BoxFit.cover
                                                          )
                                                          ),
                                                          child: Image.asset("assets/png/play.png"),
                                            ),
                                            Text("topic no",
                                        style: TextStyle(color: Colors.black),),
                                            Text("Watch video here",
                                        style: TextStyle(color: Colors.black),)
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height *.01,),
                                      Text(
                                        "Skip and go to next question",
                                       
                                      ),
                                    ],
                                  )
                                ],
                              );
}
  Widget tabs(int number) {
    return Text("$number");
  }

  Widget mcq(
      String question, String A, String B, String C, String D, String E) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                "$question",
                style: TextStyle( fontSize: 17),
              )
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
              Text("$A")
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
              Text("$B")
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'C' ,style: TextStyle(color: Colors.black),
                 
                ),
                backgroundColor: Color(0xffD4D4D4),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text("$C")
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.green,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text("$D", style: TextStyle(color: Colors.green))
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  'E',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.red,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .03,
              ),
              Text("$E", style: TextStyle(color: Colors.red))
            ],
          ),
        ],
      ),
    );
  }
}
