import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Country%20Home/country_home.dart';
import 'package:esooul/Screens/Courses/courses_provider.dart';
import 'package:esooul/Screens/Courses/courses_widget.dart';
import 'package:esooul/Screens/Home/home_provider.dart';
import 'package:esooul/Screens/Home/home_widgets.dart';
import 'package:esooul/Screens/boards_list/board_list.dart';
import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/toast.dart';
import 'package:esooul/modeles/course_card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var boardAreaData;
var data;
var userFName;
var userLName;
var courseslist = [];
bool loading = true;
late CoursesProvider _coursesProvider;

class _HomeState extends State<Home> {
  late HomeProvider _homeProvider;
  late LoginProvider _loginProvider;
  late CardProvider _cardProvider;

  @override
  void initState() {
    super.initState();
    _homeProvider = Provider.of(context, listen: false);
    _loginProvider = Provider.of(context, listen: false);
    _cardProvider = Provider.of(context, listen: false);

    userFName =
        _loginProvider.userFname == null ? "Mr" : _loginProvider.userFname;
    _coursesProvider = Provider.of(context, listen: false);
    getCourses();
    // getboards();
  }

  getCourses() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    courseslist = await _coursesProvider.coursesGet(token);
    print('topicList: ${courseslist}');
    setState(() {
      loading = false;
    });
  }

  getboards() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    var result = await _homeProvider.boardsArea(token);
    boardAreaData = result['data'];
    print('boardAreaData: $boardAreaData');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SafeArea(
          child: Container(
            child: SizedBox(
              // height: MediaQuery.of(context).size.height *1,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff72C6EF),
                            Color(0xff004E8F),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        )),
                    width: MediaQuery.of(context).size.width * .99,
                    height: MediaQuery.of(context).size.height * .52,
                  ),
                  Container(
                      padding: EdgeInsets.all(0).copyWith(top: 5),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(20).copyWith(top: 0, bottom: 10),
                            child: homeHeader(context, userFName),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .65,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // ListView.builder(
                                  //     // scrollDirection: Axis.horizontal,
                                  //     physics: ClampingScrollPhysics(),
                                  //     shrinkWrap: true,
                                  //     itemCount: boardAreaData.length == null
                                  //         ? 0
                                  //         : boardAreaData.length,
                                  //     itemBuilder: (context, i) {
                                  //       return
                                  //           // Text(boardAreaData[i]['title']);
                                  //           boardsCard(
                                  //               context,
                                  //               'assets/png/federal.png',
                                  //               boardAreaData[i]['title'],
                                  //               boardAreaData[i]
                                  //                   ['description']);
                                  //     }),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 15, left: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "mO",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/federal.png',
                                              'Federal ',
                                              'Federal Board of Intermediate and Secondary Education (FBISE), Islamabad'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "jR",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/punjab.png',
                                              'Punjab ',
                                              'Punjab Board of Technical Education'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "k5",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/sindh.png',
                                              'Sindh ',
                                              'Intermediate Board of Education Karachi, Bakhtairi Youth Center, North Nazimabad'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 15, left: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "l5",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/kpk.png',
                                              'KPK ',
                                              'Board of Intermediate and Secondary Education (BISE)'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "nR",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/balochistan.png',
                                              'Balochistan ',
                                              'Balochistan Board of Intermediate and Secondary Education'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SelectBoard(
                                                          boardID: "oj",
                                                        )));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/kashmir.png',
                                              'Kashmir',
                                              'AJK Board of Intermediate and Secondary Education, Islamabad'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  importantText(context, 'Important', ''),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        guessPaper(
                                            context,
                                            'assets/png/guesspaper.png',
                                            'Guess Paper'),
                                        guessPaper(
                                            context,
                                            'assets/png/ppscpapers.png',
                                            'Model Papers'),
                                        guessPaper(
                                            context,
                                            'assets/png/tipspaper.png',
                                            'Tips Papers')
                                      ],
                                    ),
                                  ),
                                  recomendedtext(context, 'Recommended for you',
                                      'Show all'),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * .92,
                                    // height: MediaQuery.of(context).size.height * .25,
                                    child: loading == true
                                        ? LoadingBounceAnimation(context)
                                        : ListView(
                                            shrinkWrap: true,
                                            physics: ClampingScrollPhysics(),
                                            children: [
                                              ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      ClampingScrollPhysics(),
                                                  itemCount:
                                                      courseslist.length == null
                                                          ? 0
                                                          : 7,
                                                  itemBuilder: (context, i) {
                                                    return CoursesWidget(
                                                      imgPath: courseslist[i]
                                                                  .image ==
                                                              null
                                                          ? ""
                                                          : courseslist[i]
                                                              .image,
                                                      subject: courseslist[i]
                                                                  .title ==
                                                              null
                                                          ? ""
                                                          : courseslist[i]
                                                              .title,
                                                      grade: courseslist[i]
                                                                  .grade ==
                                                              null
                                                          ? ""
                                                          : courseslist[i]
                                                              .grade,
                                                      board: courseslist[i]
                                                                  .desc ==
                                                              null
                                                          ? ""
                                                          : courseslist[i].desc,
                                                      orgPrice: courseslist[i]
                                                                  .orgPrice ==
                                                              null
                                                          ? ""
                                                          : courseslist[i]
                                                              .orgPrice,
                                                      showPrice: courseslist[i]
                                                                  .priceToShow ==
                                                              null
                                                          ? ""
                                                          : courseslist[i]
                                                              .priceToShow,
                                                      courseID:
                                                          courseslist[i].id,

                                                      // addTocard: () {
                                                      //   _cardProvider.addToCard(
                                                      //       item: CardItemModel(
                                                      //           courseslist[i]
                                                      //               .id,
                                                      //           courseslist[i]
                                                      //               .title,
                                                      //           courseslist[i]
                                                      //               .grade,
                                                      //           courseslist[i]
                                                      //               .image,
                                                      //           courseslist[i]
                                                      //               .desc,
                                                      //           courseslist[i]
                                                      //               .orgPrice,
                                                      //           courseslist[i]
                                                      //               .priceToShow,
                                                      //           courseslist[i]
                                                      //               .status,
                                                      //           false));
                                                      //   AppToast.getSuccessToast(
                                                      //       msg:
                                                      //           "Added Successfully!");
                                                      // },
                                                    );
                                                  }),
                                            ],
                                          ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        )));
  }
}
