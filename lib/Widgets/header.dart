import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/png/Frame.png"),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [_myText("Hi, John")],
                    ),
                    Row(
                      children: [_myText("Let's Start Learning")],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [_myConatiner("assets/png/bell.png")],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Column(
                          children: [
                            _myConatiner("assets/png/shopping-cart.png")
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Column(
                          children: [_myConatiner("assets/png/search.png")],
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

  _myText(String mytext) {
    return Text(
      mytext,
      style: TextStyle(color: Color(0xffCFCFCF)),
    );
  }

  _myConatiner(String imgPath) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.080,
        height: MediaQuery.of(context).size.height * 0.040,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            left: BorderSide(
              color: Colors.white60,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.white60,
              width: 1.5,
            ),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              offset: Offset(20.0, 10.0),
              blurRadius: 20.0,
              spreadRadius: 40.0,
            ),
          ],
          color: Color(0xff2F2F2F),
          shape: BoxShape.rectangle,
        ),
        // margin: EdgeInsets.only(right: 8, top: 8),
        child: Center(
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}
