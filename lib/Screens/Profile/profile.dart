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
                          height: MediaQuery.of(context).size.height * .89,
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
                          height: MediaQuery.of(context).size.height * .15,
                          width: double.infinity,
                          // decoration: BoxDecoration(color: Colors.amber),
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
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.amber
                            image: DecorationImage(
                                image: AssetImage('assets/png/image 6.png'),
                                fit: BoxFit.cover),
                          ),
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04,
                              right: MediaQuery.of(context).size.width * .04,
                              top: MediaQuery.of(context).size.height * .02),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .3,
                            left: MediaQuery.of(context).size.width * .02,
                            right: MediaQuery.of(context).size.width * .02,
                          ),
                          height: MediaQuery.of(context).size.height * .55,
                          width: double.infinity,
                          child: Column(
                            children: [
                              data(
                                'First Name',
                                '$userFName',
                              ),
                              data('Last Name', '$userLName'),
                              data('Email', '$userEmail'),
                              data('Contact Number', 'Type here'),
                              SizedBox(height: MediaQuery.of(context).size.height *.02,),
                              ElevatedButton(onPressed: (){}, 
                               style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(
                                      left:
                                          MediaQuery.of(context).size.width *
                                              .335,
                                      top:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                      right:
                                          MediaQuery.of(context).size.width *
                                              .335),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100)),
                                  primary: Color(0xff00B0D7)),
                              child: Text("Save"))
                            ],
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * .04,
                          top: MediaQuery.of(context).size.height * .83,
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
                            backgroundColor: Color(0xff72C6EF),
                            radius: MediaQuery.of(context).size.height * .06,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: MediaQuery.of(context).size.height *.16,
                          
                          child: GestureDetector(
                            
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Settings()));
                            },
                            child: Icon(Icons.settings_outlined,size: 35,))),

                            
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
            Padding(
              padding: const EdgeInsets.only(left:40),
              child: Text(
                titel,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        Container(
            height: MediaQuery.of(context).size.height * .04,
            width: MediaQuery.of(context).size.width *.75,
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
                  hintStyle: TextStyle(color: Color(0xffC3C5C9),fontSize: 14),
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
