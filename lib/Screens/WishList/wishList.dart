import 'package:esooul/Screens/Courses/MCQs.dart';
import 'package:esooul/Screens/Courses/Report.dart';
import 'package:esooul/Screens/Courses/Topics.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(
                btntext: 'Wishlist',
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .0,
                    left: MediaQuery.of(context).size.width * .01,
                    right: MediaQuery.of(context).size.width * .01,
                  ),
                  height: MediaQuery.of(context).size.height * .9,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey, width: 5),
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(
                    //       MediaQuery.of(context).size.width * .08),
                    //   topRight: Radius.circular(
                    //       MediaQuery.of(context).size.width * .08),
                    // ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _courseContainer(
                            "assets/png/candageography.png",
                            "Issues in Canadian Geography",
                            "Ponam Ghazanfar",
                            "Category - History",
                            "1000",
                            "1500"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        _courseContainer(
                            "assets/png/candageography.png",
                            "Issues in Canadian Geography",
                            "Ponam Ghazanfar",
                            "Category - History",
                            "1000",
                            "1500"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Mcqs()));
                                },
                                child: Text("MCQs")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Topics()));
                                },
                                child: Text("Topics")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Report()));
                                },
                                child: Text("Report")),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _courseContainer(String imgPath, String subject, String author,
      String category, String discountPrice, String price) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 15),
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 5,
        color: Colors.grey,
        spreadRadius:1)],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //1st Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    imgPath,
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(subject,style: TextStyle(color: Colors.black),),
                  Text(
                    author,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(category,style: TextStyle(color: Colors.black),),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.020,
                      ),
                      Text(
                        discountPrice,
                        style: TextStyle(color: Color(0xff00B0D7)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            color: Color(0xff949494),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00B0D7),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                  label: Text("Add to cart")),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00B0D7),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  onPressed: () {},
                                  icon: Icon(Icons.close),
                                  label: Text("Remove")),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
