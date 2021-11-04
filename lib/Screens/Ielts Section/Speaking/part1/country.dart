// ignore_for_file: non_constant_identifier_names

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Country extends StatefulWidget {
  const Country({ Key? key }) : super(key: key);

  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {

  @override
  Widget build(BuildContext context) {
    List part1List = SpeakingData.countryList;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Question'),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView.builder(
                      itemCount: part1List.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            questionCard(
                                context,
                                part1List[index].question,
                                Answer(
                                  ans: part1List[index].answer,
                                   question: part1List[index].question,
                                ),),
                            // Text('$index')
                          ],
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


}