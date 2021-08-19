import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
class Topics extends StatefulWidget {
  const Topics({ Key? key }) : super(key: key);

  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Container(child:Column(children: [
             Header(),
             Stack(children: [
               Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .01,
                  right: MediaQuery.of(context).size.width * .01,
                ),
                height: MediaQuery.of(context).size.height * .7,
                width: double.infinity,
                decoration: BoxDecoration(
                    
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.width * .08),
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.width * .08))),
              ),
             ],)
           ],)),      
    );
  }
}