import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Units extends StatefulWidget {
  const Units({Key? key}) : super(key: key);

  @override
  _UnitsState createState() => _UnitsState();
}

class _UnitsState extends State<Units> {
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
                  height: MediaQuery.of(context).size.height * .82,
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
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * .08),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * .08))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .0025,
                    left: MediaQuery.of(context).size.width * .015,
                    right: MediaQuery.of(context).size.width * .015,
                  ),
                  height: MediaQuery.of(context).size.height * .82,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * .08),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * .08))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
            topLeft: Radius.circular(MediaQuery.of(context).size.width * .1),
            topRight:
                Radius.circular(MediaQuery.of(context).size.width * .1)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BackButtonWidget(
                                iconPath: 'assets/png/presentation4.png'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Select a Unit",
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * .002,
                                width: MediaQuery.of(context).size.width * .7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.black,
                                      Colors.white,
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff7B7B7B),
                                      borderRadius: BorderRadius.circular(
                                          MediaQuery.of(context).size.height *.03)),
                                  width: MediaQuery.of(context).size.width * .9,
                                  height: MediaQuery.of(context).size.height * .3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                  image: AssetImage('assets/png/image 8.png'),
                                  fit: BoxFit.cover),
                                                borderRadius: BorderRadius.circular(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        .03)),
                                            width:
                                                MediaQuery.of(context).size.width *
                                                    .8,
                                            height:
                                                MediaQuery.of(context).size.height *
                                                    .2,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Introduction to  Issues in Canadian Geography,",
                                              style: TextStyle(fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25),
                                        child: Row(
                                         children: [
                                          Column(
                                            children: [
                                              Text("Likes 2K"),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:25),
                                            child: Column(
                                              children: [
                                                Text("Created 12 jun 2021"),
                                              ],
                                            ),
                                          )
                                        ],),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Card(
                              
                             color: Color(0xff3D3D3D),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(
                              
                              
                              child: SingleChildScrollView(
                                
                                child: ExpansionTile(
                                  title: Column(
                                            children: [
                                              ListTile(
                                                leading:
                                                    Image.asset('assets/png/Mask.png'),
                                                title: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Topic 01-lorem isum"),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Author- ",
                                                          style: TextStyle(
                                                              color: Color(0xffFFD643)),
                                                        ),
                                                        Text("Alexender")
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("Topic - 15"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: MediaQuery.of(context).size.width *.001,
                                                      right: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          .01),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffD9D9D9),
                                                      borderRadius: BorderRadius.circular(
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .03)),
                                                  width: MediaQuery
                                                              .of(context)
                                                          .size
                                                          .width *
                                                      .85,
                                                  height:
                                                      MediaQuery.of(context).size.height *
                                                          .04,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.center,
                                                        children: [
                                                          CircleAvatar(
                                                            backgroundColor:
                                                                Color(0xff464646),
                                                            child: Text('1'),
                                                            radius: 16,
                                                          )
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            "Likes  2k",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff0B0C0B)),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            "Created 12 jun 2021",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(0xff0B0C0B)),
                                                          )
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.center,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Buy Now',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    color: Color(
                                                                        0xff0B0C0B)),
                                                              ),
                                                              SizedBox(
                                                                width:
                                                                    MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .01,
                                                              ),
                                                              Icon(
                                                                Icons.favorite,
                                                                color: Colors.red,
                                                                size: 30,
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )),
                                                  
                                                  SizedBox(height: MediaQuery.of(context).size.height *.02,)
                                            ],
                                          ),
                                          children: [
                                            card(
                                                'assets/png/Mask.png',
                                                01,
                                                'Intro to history',
                                                'Alexender',
                                                'Topic - 15',
                                                2,
                                                '12 june 2021',
                                                "Buy now"),
                                                card(
                                                'assets/png/Mask.png',
                                                01,
                                                'Intro to history',
                                                'Alexender',
                                                'Topic - 15',
                                                2,
                                                '12 june 2021',
                                                "Buy now"),card(
                                                'assets/png/Mask.png',
                                                01,
                                                'Intro to history',
                                                'Alexender',
                                                'Topic - 15',
                                                2,
                                                '12 june 2021',
                                                "Buy now"),
                                          ],
                                          ),
                              ),
                            ),
                                
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget card(String img, int unit, String unitName, String author,
      String topic, double likes, String date, String purchase) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff646464),
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * .03)),
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Image.asset(img),
              title: Column(
                children: [
                  Row(
                    children: [
                      Text("unit $unit- $unitName"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Author- ",
                        style: TextStyle(color: Color(0xffFFD643)),
                      ),
                      Text("$author")
                    ],
                  ),
                  Row(
                    children: [
                      Text("$topic"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .01,
                    right: MediaQuery.of(context).size.width * .01),
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * .03)),
                width: MediaQuery.of(context).size.width * .79,
                height: MediaQuery.of(context).size.height * .04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff464646),
                          child: Text('$unit'),
                          radius: 16,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Likes $likes k",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff0B0C0B)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Created- $date",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff0B0C0B)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              purchase,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff0B0C0B)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .01,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
