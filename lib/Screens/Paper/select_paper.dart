import 'package:esooul/Widgets/back_button.dart';
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
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header2(),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 2),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
                    // ClipPolygon(
                    //   sides: 3,
                    //   borderRadius: 10.0, // Defaults to 0.0 degrees
                    //   rotate: 90.0, // Defaults to 0.0 degrees
                    //   boxShadows: [
                    //     PolygonBoxShadow(color: Colors.black, elevation: 10.0),
                    //     PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                    //   ],
                    //   child: Container(color: Colors.black),
                    // ),
                    //                   Positioned(
                    //                     //  left: 20,
                    //                     // right: 10,
                    //                     // top: 20,
                    // //bottom: MediaQuery.of(context).size.height * 0.70,
                    //                     child: GestureDetector(
                    //                       child: Container(
                    //                         decoration: BoxDecoration(
                    //                             image: DecorationImage(
                    //                               image: AssetImage("assets/png/Polygon 1.png"),
                    //                             ),
                    //                             color: Colors.white),
                    //                         child: Stack(
                    //                           children: [
                    //                             Positioned(
                    //                               top: 10,
                    //                               left: 30,
                    //                               right: 30,
                    //                               child: Column(
                    //                                 // crossAxisAlignment: CrossAxisAlignment.start,
                    //                                 // mainAxisAlignment: MainAxisAlignment.center,
                    //                                 children: <Widget>[
                    //                                   Image.asset("assets/png/calendar 1.png"),
                    //                                   Text(
                    //                                     "Past Papers",
                    //                                     style: TextStyle(
                    //                                         color: Colors.white,
                    //                                         fontSize: 28.0,
                    //                                         fontWeight: FontWeight.w400),
                    //                                   ),
                    //                                   Text(
                    //                                     "Download and attempt\n yearly papers",
                    //                                     style: TextStyle(
                    //                                         color: Colors.white,
                    //                                         fontSize: 15.0,
                    //                                         fontWeight: FontWeight.w200),
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   Stack(
                    //                     children: [
                    //                       Positioned(
                    //                         left: 100,
                    //                         right: 10,
                    //                         top: 200,
                    //                         bottom: 20,
                    //                         child: GestureDetector(
                    //                           child: Container(
                    //                             height: MediaQuery.of(context).size.height * 0.40,
                    //                             width: MediaQuery.of(context).size.width * 0.80,
                    //                             decoration: BoxDecoration(
                    //                               image: DecorationImage(
                    //                                 image: AssetImage("assets/png/Polygon2.png"),
                    //                               ),
                    //                             ),
                    //                             child: Center(
                    //                               // left: 20,
                    //                               //   right: 20,
                    //                               //   bottom: 20,
                    //                               //   top: 50,
                    //                               child: Column(
                    //                                 // crossAxisAlignment: CrossAxisAlignment.start,
                    //                                 // mainAxisAlignment: MainAxisAlignment.center,
                    //                                 children: <Widget>[
                    //                                   Image.asset("assets/png/pen 1.png"),
                    //                                   Text(
                    //                                     "Custom Papers",
                    //                                     style: TextStyle(
                    //                                         color: Colors.white,
                    //                                         fontSize: 28.0,
                    //                                         fontWeight: FontWeight.w400),
                    //                                   ),
                    //                                   Text(
                    //                                     "Enter topics and generate\nyour own paper",
                    //                                     style: TextStyle(
                    //                                         color: Colors.white,
                    //                                         fontSize: 15.0,
                    //                                         fontWeight: FontWeight.w200),
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
