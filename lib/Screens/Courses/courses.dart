import 'dart:convert';
import 'package:esooul/Screens/Courses/courses_provider.dart';
import 'package:esooul/Screens/Courses/courses_widget.dart';
import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/toast.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/card_item_model.dart';
import 'package:esooul/modeles/courses_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animations/loading_animations.dart';
import 'package:provider/provider.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  var jsondata;
  var courseslist = [];
  bool loading = true;
  late CoursesProvider _coursesProvider;
  late CardProvider _cardProvider;

  @override
  void initState() {
    super.initState();
    _coursesProvider = Provider.of(context, listen: false);
    _cardProvider = Provider.of(context, listen: false);
    getCourses();
  }

  getCourses() async {
    courseslist = await _coursesProvider.coursesGet();
    print('topicList: ${courseslist}');
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(children: [
            Header(
              btntext: 'Courses',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      loading == true
                          ? LoadingBounceAnimation(context)
                          : ListView(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              children: [
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: courseslist.length,
                                    itemBuilder: (context, i) {
                                      return CoursesWidget(
                                        imgPath: courseslist[i].image == null
                                            ? ""
                                            : courseslist[i].image,
                                        subject: courseslist[i].title == null
                                            ? ""
                                            : courseslist[i].title,
                                        grade: courseslist[i].grade == null
                                            ? ""
                                            : courseslist[i].grade,
                                        board: courseslist[i].desc == null
                                            ? ""
                                            : courseslist[i].desc,
                                        likes: courseslist[i].orgPrice == null
                                            ? ""
                                            : courseslist[i].orgPrice,
                                        addTocard: () {
                                          // _cardProvider.cardItem
                                          //     .add(CardItemModel(
                                          //   courseslist[i].id,
                                          //   courseslist[i].title,
                                          //   courseslist[i].grade,
                                          //   courseslist[i].image,
                                          //   courseslist[i].desc,
                                          //   courseslist[i].orgPrice,
                                          //   courseslist[i].status,
                                          // ));
                                          _cardProvider.addToCard(
                                              item: CardItemModel(
                                            courseslist[i].id,
                                            courseslist[i].title,
                                            courseslist[i].grade,
                                            courseslist[i].image,
                                            courseslist[i].desc,
                                            courseslist[i].orgPrice,
                                            courseslist[i].status,
                                            false
                                          ));
                                          AppToast.getSuccessToast(
                                              msg: "Added Successfully!");
                                        },
                                      );
                                    }),
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
