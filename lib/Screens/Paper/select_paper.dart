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
            Stack(
              children: [
                Header(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TopicList()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .1),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .65,
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/png/custompapercontainer.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .35),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .65,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/png/pastpapercontainer.png'),
                          fit: BoxFit.contain)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
