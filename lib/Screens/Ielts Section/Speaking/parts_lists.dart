
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/country.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/home_town.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/work_studies.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class PartsLists extends StatefulWidget {
  const PartsLists({ Key? key }) : super(key: key);

  @override
  _PartsListsState createState() => _PartsListsState();
}

class _PartsListsState extends State<PartsLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Header(btntext: ''),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WorkAndStudies()));
          },
          child: tile(1, 'Work and studies(Always in Use)','Free answer',10)),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeTown()));
          },
          child: tile(2, 'Home town(Always in Use)','Free answer',13)),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Country()));
          },
          child: tile(3, 'Country(Always in Use)','Free answer',5)),
      ],),
    );
  }



  Widget tile(int number,String title, String trailing, int questions){
    return     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height *.1,
            width: MediaQuery.of(context).size.width *.97,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0,3)
              )]
              ),
            child: ListTile(
              leading: CircleAvatar(radius: 30,backgroundColor:Colors.green,child: Text('$number',style: TextStyle(fontSize: 20),),),
              title: Text(title,style: TextStyle(fontSize: 15),),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(trailing,style: TextStyle(color: Colors.red),),
                Text("$questions questions")
              ],
            ),
            ),
          ),
    );
  }
}