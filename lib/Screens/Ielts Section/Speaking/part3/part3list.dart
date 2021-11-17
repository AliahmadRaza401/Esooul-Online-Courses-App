import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/country.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/home_town.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/work_studies.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part2/mobilePhone.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part2/puzzle.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part2/street_market.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part3/mobile_phone.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part3/puzzle.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part3/streetMarket.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Part3Lists extends StatefulWidget {
  const Part3Lists({Key? key}) : super(key: key);

  @override
  _Part3ListsState createState() => _Part3ListsState();
}

class _Part3ListsState extends State<Part3Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(btntext: ''),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MobilePhonePart3()));
              },
              child: tile(1, 'Mobile Phone', 'Free answer',
                  SpeakingData.part3Test1.length)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StreetMarketPart3()));
              },
              child: tile(2, 'Street market', 'Free answer',
                  SpeakingData.part3Test2.length)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PuzzlePart3()));
              },
              child: tile(
                  3, 'Puzzle', 'Free answer', SpeakingData.part3Test3.length)),
        ],
      ),
    );
  }

  Widget tile(int number, String title, String trailing, int questions) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * .97,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3))
        ]),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: Text(
              '$number',
              style: TextStyle(fontSize: 20),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trailing,
                style: TextStyle(color: Colors.red),
              ),
              Text("$questions questions")
            ],
          ),
        ),
      ),
    );
  }
}
