import 'package:esooul/Widgets/header.dart';
import 'package:esooul/config/config.dart';
import 'package:flutter/material.dart';
   
   class NodataMessage extends StatefulWidget {
     const NodataMessage({ Key? key }) : super(key: key);
   
     @override
     _NodataMessageState createState() => _NodataMessageState();
   }
   
   class _NodataMessageState extends State<NodataMessage> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         backgroundColor: Colors.white,
         body: Column(
           
           children: [
             Header(btntext: ""),
             Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.5,
    child: Text(
      "Comming Soon",
      style: TextStyle(color: Colors.black),
    ),
  ),
           ],
         ));
         
      
     }
   }













