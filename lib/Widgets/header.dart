import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/card/card.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  String btntext;

  Header({
    required this.btntext,
  });

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late LoginProvider _loginProvider;
  var userFName;
  @override
  void initState() {
    super.initState();
    _loginProvider = Provider.of(context, listen: false);
    userFName =
        _loginProvider.userFname == null ? "Hi! " : _loginProvider.userFname;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0080,
            left: MediaQuery.of(context).size.width * .017,
            right: MediaQuery.of(context).size.width * .017,
            bottom: MediaQuery.of(context).size.height * 0.0),
        padding: EdgeInsets.all(12.0).copyWith(bottom: 0),
        height: MediaQuery.of(context).size.height * 0.24,
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
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/png/EsoulLogo.png",
                    width: MediaQuery.of(context).size.width * .25
                    // height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width * 0.1
                    ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [_myText("Hi, $userFName")],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [_myConatiner("assets/png/nsearch.png")],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.020,
                          ),
                          Column(
                            children: [
                              _myConatiner("assets/png/nnotification.png")
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.020,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyCard()));
                            },
                            child: Column(
                              children: [_myConatiner("assets/png/ncart.png")],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .02),
              child: Row(
                children: [_myText("Let's Start Learning")],
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .02),
              child: GestureDetector(
                onTap: () {
                  return invitefriendAlert();
                },
                child: Row(
                  children: [
                    Text(
                      "Invite Friend",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .02,
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height * 0.1,
                      // width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset(
                        "assets/png/share-2 (1).png",
                        width: MediaQuery.of(context).size.width * .04,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            //  BackButtonWidget(
            //     iconPath: $icon, buttontext: "Settings")
            BackButtonWidget(
                // iconPath: widget.icon.toString(),
                buttontext: widget.btntext.toString())
          ],
        ),
      ),
    );
  }

  _myText(String mytext) {
    return Text(
      mytext,
      style: TextStyle(color: Colors.white, fontSize: 15.0),
    );
  }

  _myConatiner(String imgPath) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.080,
        height: MediaQuery.of(context).size.height * 0.040,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Image.asset(imgPath),
        ),
      ),
    );
  }

  invitefriendAlert() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(0, 60, 0, 10),
        actionsPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        // actionPadding:
        content: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  "assets/png/Instagram.png",
                  width: MediaQuery.of(context).size.width * 0.13,
                ),
              ),
              GestureDetector(
                  child: Image.asset(
                "assets/png/Twitter.png",
                width: MediaQuery.of(context).size.width * 0.13,
              )),
              GestureDetector(
                  child: Image.asset(
                "assets/png/Linkedin.png",
                width: MediaQuery.of(context).size.width * 0.13,
              )),
              GestureDetector(
                  child: Image.asset(
                "assets/png/Facebook.png",
                width: MediaQuery.of(context).size.width * 0.13,
              )),
              GestureDetector(
                  child: Image.asset(
                "assets/png/YouTube.png",
                width: MediaQuery.of(context).size.width * 0.13,
              )),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width * 0.60,
                    MediaQuery.of(context).size.height * 0.050),
                primary: Color(0xffEBEBEB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // <-- Radius
                ),
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .pop(); // dismisses only the dialog and returns nothing
              },
              child: new Text(
                'Invite with Referal Code',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
