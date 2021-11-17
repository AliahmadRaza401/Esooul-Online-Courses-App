import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/parts_lists.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part2/parts_lists.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part3/part3list.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class SpeakingTest extends StatefulWidget {
  const SpeakingTest({ Key? key }) : super(key: key);

  @override
  _SpeakingTestState createState() => _SpeakingTestState();
}

class _SpeakingTestState extends State<SpeakingTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
          Header(btntext: ''),
          Container(
            height: MediaQuery.of(context).size.height *.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Part1Lists()));
                    },
                    child: partsCard(1, Colors.green)),
                  GestureDetector(
                     onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      Part2Lists()));
                    },
                    child: partsCard(2, Colors.blue)),
                ],),
              ],
            ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
               onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Part3Lists()));
                    },
              child: partsCard(3, Colors.orange)),
            
          ],),

      ],),
    );
  }



  Widget partsCard(int number,Color color){
    return Container(
            width: MediaQuery.of(context).size.width *.4,
            height: MediaQuery.of(context).size.height *.25,
            color: Colors.grey.withOpacity(.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.voicemail_outlined,size: 50,color:color,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Part",style: TextStyle(fontSize: 40),),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width *.15,
                    height: MediaQuery.of(context).size.height *.25,
                    color: color,
                    child: Text('$number',style: TextStyle(fontSize: 40,color: Colors.white),),
                  ),
                ],
              )
            ],),
          );
  }
}