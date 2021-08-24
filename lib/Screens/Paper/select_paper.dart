import 'package:esooul/Screens/Paper/topic_list.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class SelectPaper extends StatefulWidget {
  SelectPaper({Key? key}) : super(key: key);

  @override
  _SelectPaperState createState() => _SelectPaperState();
}

class _SelectPaperState extends State<SelectPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header2(),
            SizedBox(
              child: Stack(
                children: <Widget>[
                  //Container
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TopicList()),
                      );
                    },
                    child: Container(
                      height: 500,
                      width: 1000,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/png/custompapercontainer.png") //NetworkImage
                            ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 50,
                    top: 500,
                    bottom: 50,
                    child: Container(
                      width: 1000,
                      height: 500,

                      // padding: EdgeInsets.all(15.0),
                      //  alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/png/pastpapercontainer.png")),
                      ),
                    ),
                  ), //Container
                ],
              ),
            ),
          ],
        ), //SizedBox
        // child: Stack(
        //   children: [
        //     Container(
        //       color: Colors.white,
        //     ),
        //     Positioned(
        //       top: MediaQuery.of(context).size.height * 0.002,
        //       right: MediaQuery.of(context).size.width * 0,
        //       left: MediaQuery.of(context).size.width * 0.06,
        //       bottom: MediaQuery.of(context).size.height * 0.25,
        //       child: Container(
        //         // height: MediaQuery.of(context).size.height * 0.20,
        //         // width: MediaQuery.of(context).size.width * 0.50,
        //         decoration: BoxDecoration(
        //           color: Colors.amber,
        //           // image: DecorationImage(
        //           //     image: AssetImage("assets/png/custompapercontainer.png")),
        //         ),
        //         child: Image.asset(
        //           "assets/png/custompapercontainer.png",
        //           // height: MediaQuery.of(context).size.height * 1,
        //           // width: MediaQuery.of(context).size.width * 2,
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: MediaQuery.of(context).size.height * 0.25,
        //       left: MediaQuery.of(context).size.width * 0.28,
        //       child: Container(
        //         height: double.infinity,
        //         width: double.infinity,
        //         //height: MediaQuery.of(context).size.height * 0.20,
        //         //width: MediaQuery.of(context).size.width * 0.90,
        //         decoration: BoxDecoration(
        //           color: Colors.black,
        //           // image: DecorationImage(
        //           //     fit: BoxFit.cover,
        //           //     image: AssetImage(
        //           //       "assets/png/pastpapercontainer.png",
        //           //     )),
        //         ),
        //       ),
        //     ),
        //     Header2(),
        //   ],
        // ),
      ),
    );
  }
}
