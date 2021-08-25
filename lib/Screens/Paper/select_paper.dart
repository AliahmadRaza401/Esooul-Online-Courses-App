import 'dart:ui';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(
              btntext: 'Paper',
            ),
           papercard(context, 'assets/png/calender.png', 'Past Papers','Download and attempt','Yearly Papers',Color(0xff72C6EF),
                Color(0xff25AE95),),
           papercard(context, 'assets/png/editgoroup.png', 'Custom Papers','Enter topics and generate','Your own Papers',Color(0xff2575AE),
                Color(0xff72C6EF),),
           SizedBox(height: MediaQuery.of(context).size.height *.06,)
          ],
        ),
      ),
    );
  }
}



Widget papercard(BuildContext context,String icon,String title,String desc,String papers,final color1,final color2){

 
return Stack(
  children: [
 Container(
    
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          blurRadius: 2,
          spreadRadius: 5,
          color: Color(0xffD7E0E4),
        offset: Offset(1,2)
        )],
   gradient: new LinearGradient(
              colors: [
                color1,
                color2,
              ],
            // stops: [0.0, 1.0],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            
          ),
      borderRadius: BorderRadius.circular(70)),
    
      width:MediaQuery.of(context).size.width *.9,
    
      height: MediaQuery.of(context).size.height *.3,
      
    
    ),

        Container(
       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.015,
       left: MediaQuery.of(context).size.width*.025
       ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      image: DecorationImage(image: AssetImage('assets/png/backgroundpapers.png'),
      fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(70)),
    
      width:MediaQuery.of(context).size.width *.85,
    
      height: MediaQuery.of(context).size.height *.27,
    
      child: Column(
    
        mainAxisAlignment: MainAxisAlignment.center,
    
        // crossAxisAlignment: CrossAxisAlignment.center,
    
        children: [
    
        Image.asset("$icon"),
    
        Text("$title",style: TextStyle(fontSize: 25),),
    
        Text("$desc"),
    
        Text("$papers")
    
      ],),
    
    ),
  ],
);
}

