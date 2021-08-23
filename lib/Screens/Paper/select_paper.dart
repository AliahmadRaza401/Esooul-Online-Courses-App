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
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Header2(),
                Positioned(
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.95,
                    // width: MediaQuery.of(context).size.width * 0.95,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage(
                    //           "assets/png/custompapercontainer.png")),
                    // ),
                    child: Image.asset("assets/png/custompapercontainer.png"),
                    // child: GestureDetector(
                    //   onTap: () {
                    //     print("Pressed");
                    //   },
                    // ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.95,
                    width: MediaQuery.of(context).size.width * 0.95,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage(
                    //           "assets/png/pastpapercontainer.png")),
                    // ),
                    // child: GestureDetector(
                    //   onTap: () {
                    //     print("Pressed");
                    //   },
                    // ),
                    //color: Colors.red,
                    child: Image.asset("assets/png/pastpapercontainer.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
