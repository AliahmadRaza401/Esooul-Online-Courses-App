import 'dart:convert';

import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/fill_in_blanks.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/question_types.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/modeles/listening_test_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../IELTS Home/ielts_widget.dart';

class PracticeListeningTest extends StatefulWidget {
  const PracticeListeningTest({Key? key}) : super(key: key);

  @override
  _PracticeListeningTestState createState() => _PracticeListeningTestState();
}

class _PracticeListeningTestState extends State<PracticeListeningTest> {
  late ListeningProvider listeningProvider;
  var data;

  @override
  void initState() {
    super.initState();
    listeningProvider = Provider.of<ListeningProvider>(context, listen: false);
    getTest();
  }

  getTest() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    try {
      print("----------- Get Listening Test Data ---------------");
      print(listeningTestApi);
      final _responce = await http.get(
        Uri.parse(listeningTestApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      // var result = jsonDecode(_responce.body);
      // print('result: $result');
      final welcome = listeningTestModelFromJson(_responce.body);
      // print('welcome: ${welcome.data}');
      if (welcome.status == 200) {
        setState(() {
          data = welcome.data;
        });
      } else {
        CommomWidget().okayAlertDialog(
          context,
          "Failed",
          "Something wrong please try again or check Internet Connection",
        );
      }
    } catch (e) {
      return CommomWidget().okayAlertDialog(
        context,
        "Failed",
        "Something wrong please try again or check Internet Connection",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(btntext: 'Listening test'),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      " (press on test for start question answer) ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              data == null
                  ? LoadingBounceAnimation(context)
                  : Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: data.length == null ? 0 : data.length,
                            itemBuilder: (context, i) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) => FillInBlanks(
                                                audio: data[i].audio,
                                                questions:
                                                    data[i].questionanswers))));
                                  },
                                  child: practiceTestCard(
                                      context, data[i].name, ''));
                            },
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
