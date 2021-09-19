import 'package:flutter/material.dart';

class Header2 extends StatefulWidget {
  Header2({Key? key}) : super(key: key);

  @override
  _Header2State createState() => _Header2State();
}

class _Header2State extends State<Header2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0080,
            left: MediaQuery.of(context).size.width * .017,
            right: MediaQuery.of(context).size.width * .017,
            bottom: MediaQuery.of(context).size.height * 0.0),
        padding: EdgeInsets.all(12.0),
        height: MediaQuery.of(context).size.height * 0.225,
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
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                topLeft:
                    Radius.circular(MediaQuery.of(context).size.width * .07),
                topRight:
                    Radius.circular(MediaQuery.of(context).size.width * .07))),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/png/esooulheader2.png",
                  // height: MediaQuery.of(context).size.height * 0.1,
                  // width: MediaQuery.of(context).size.width * 0.1
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [_myText("Hi")],
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
                          children: [
                            _myConatiner("assets/png/notification.png")
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Column(
                          children: [_myConatiner("assets/png/addtocart.png")],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            _searchWidget()
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
        // margin: EdgeInsets.only(right: 8, top: 8),
        child: Center(
          child: Image.asset(imgPath),
        ),
      ),
    );
  }

  _searchWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.050,
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextFormField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff2B5876)),
              child: Center(
                child: Image.asset("assets/png/sliders.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
