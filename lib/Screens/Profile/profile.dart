import 'package:esooul/Navigator/pageNavigator.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';

import 'package:esooul/Screens/Profile/Privacy.dart';
import 'package:esooul/Screens/Profile/Setting.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Terms and privacy.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late LoginProvider _loginProvider;
  var userFName;
  var userLName;
  var userEmail;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginProvider = Provider.of(context, listen: false);
    userFName =
        _loginProvider.userFname == null ? "Hi! " : _loginProvider.userFname;
    userLName =
        _loginProvider.userLname == null ? "Mr" : _loginProvider.userLname;
    userEmail = _loginProvider.userEmail == null
        ? "@gmail.com"
        : _loginProvider.userEmail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SafeArea(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .006,
                            left: MediaQuery.of(context).size.width * .01,
                            right: MediaQuery.of(context).size.width * .01,
                          ),
                          height: MediaQuery.of(context).size.height * .91,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff72C6EF),
                                  Color(0xff004E8F),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .001,
                            left: MediaQuery.of(context).size.width * .01,
                            right: MediaQuery.of(context).size.width * .01,
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/png/image 8.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      MediaQuery.of(context).size.width * .078),
                                  topRight: Radius.circular(
                                      MediaQuery.of(context).size.width *
                                          .078))),
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
                          height: MediaQuery.of(context).size.height * .26,
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Text(
                                userFName + " " + userLName,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Text(
                                userEmail,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Text(
                                "john Doe@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                  Column(children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Photos",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ]),
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
                                  'Institute',
                                  'School Optional',
                                ),
                                data('Gender', 'Select'),
                                data('Grade', 'Select'),
                                data('Contact Number', 'Type here')
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * .04,
                          top: MediaQuery.of(context).size.height * .85,
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .015,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                .015,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                .4),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    primary: Colors.white),
                                child: Text(
                                  "Settings",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Settings()));
                                },
                              ),
                            ],
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
                            backgroundColor: Colors.blueAccent,
                            radius: MediaQuery.of(context).size.height * .06,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
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
