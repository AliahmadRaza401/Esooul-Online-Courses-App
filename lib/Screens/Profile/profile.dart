import 'package:esooul/Navigator/pageNavigator.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Courses/Units.dart';
import 'package:esooul/Screens/Profile/Privacy.dart';
import 'package:esooul/Screens/Profile/Setting.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'Terms and privacy.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xff404040),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .006,
                        left: MediaQuery.of(context).size.width * .01,
                        right: MediaQuery.of(context).size.width * .01,
                      ),
                      height: MediaQuery.of(context).size.height * .87,
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
                        top: MediaQuery.of(context).size.height * .01,
                        left: MediaQuery.of(context).size.width * .02,
                        right: MediaQuery.of(context).size.width * .02,
                      ),
                      height: MediaQuery.of(context).size.height * .87,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff404040),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  MediaQuery.of(context).size.width * .07),
                              topRight: Radius.circular(
                                  MediaQuery.of(context).size.width * .07))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .008,
                        left: MediaQuery.of(context).size.width * .01,
                        right: MediaQuery.of(context).size.width * .01,
                      ),
                      height: MediaQuery.of(context).size.height * .9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  MediaQuery.of(context).size.width * .08),
                              topRight: Radius.circular(
                                  MediaQuery.of(context).size.width * .08))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .01,
                        left: MediaQuery.of(context).size.width * .02,
                        right: MediaQuery.of(context).size.width * .02,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/png/image 8.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  MediaQuery.of(context).size.width * .078),
                              topRight: Radius.circular(
                                  MediaQuery.of(context).size.width * .078))),
                      height: MediaQuery.of(context).size.height * .15,
                      width: double.infinity,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .06),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .16,
                        left: MediaQuery.of(context).size.width * .02,
                        right: MediaQuery.of(context).size.width * .02,
                      ),
                      height: MediaQuery.of(context).size.height * .25,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xff404040)),
                      child: Column(
                        children: [
                          Text(
                            "John Doe, 27",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            'San Francisco, USA',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            "john Doe@gmail.com",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "2k",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Likes",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Photos",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "89",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Comments",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/png/image 6.png'),
                            fit: BoxFit.cover),
                      ),
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .08,
                          right: MediaQuery.of(context).size.width * .08,
                          top: MediaQuery.of(context).size.height * .02),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .37,
                        left: MediaQuery.of(context).size.width * .02,
                        right: MediaQuery.of(context).size.width * .02,
                      ),
                      height: MediaQuery.of(context).size.height * .55,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            data(
                              'School',
                              'School Optional',
                            ),
                            data('Gender', 'Select'),
                            data('Grade', 'Select'),
                            data('Contact Number', 'Type here'),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .07,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .07),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      primary: Color(0xff00B0D7)),
                                  child: Text("Contact Us"),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Units()));
                                  },
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .09,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .09),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      primary: Color(0xff00B0D7)),
                                  child: Text("Settings"),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Settings()));

                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => BottomNavBar(
                                                  activeIndex: 4,
                                                )));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * .1,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset('assets/png/Mask Group.png'),
                        ),
                        backgroundColor: Color(0xff404040),
                        radius: MediaQuery.of(context).size.height * .06,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget data(String titel, String hinttext) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              titel,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        Container(
            height: MediaQuery.of(context).size.height * .04,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .01),
                  suffixIcon: Icon(Icons.edit_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Color(0xffC3C5C9)),
                  hintText: hinttext,
                  fillColor: Colors.white),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
      ],
    );
  }
}
