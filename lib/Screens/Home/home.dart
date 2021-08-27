import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Home/home_provider.dart';
import 'package:esooul/Screens/Home/home_widgets.dart';
import 'package:esooul/Screens/boards_list/board_list.dart';
import 'package:esooul/Widgets/header.dart';
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

class _HomeState extends State<Home> {
  late HomeProvider _homeProvider;
  late LoginProvider _loginProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeProvider = Provider.of(context, listen: false);
    _loginProvider = Provider.of(context, listen: false);
    getName();
    // getboards();
  }

  getName() async {
    userFName = await _loginProvider.getUserFName();
    print('userFName: $userFName');
    userLName = await _loginProvider.getUserLName();
    print('userLName: $userLName');
  }

  getboards() async {
    var result = await _homeProvider.boardsArea();
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
                                  //     physics: ClampingScrollPhysics(),
                                  //     shrinkWrap: true,
                                  //     itemCount: boardAreaData.length == null
                                  //         ? 0
                                  //         : boardAreaData.length,
                                  //     itemBuilder: (context, i) {
                                  //       return Text(boardAreaData[i]['title']);
                                  //       // boardsCard(
                                  //       //     context,
                                  //       //     'assets/png/federal.png',
                                  //       //     boardAreaData[i]['title'],
                                  //       //     boardAreaData[i]['description']);
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

                                  sapratedWidgets(context, 'Important', ''),
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
                                  sapratedWidgets(context,
                                      'Recommended for you', 'Show all'),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * .99,
                                    // height: MediaQuery.of(context).size.height * .25,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          recommendedCard(
                                              context,
                                              'assets/png/physics9th.png',
                                              'Physics class 09th',
                                              'Board of Intermediate and Secondary Education (BISE) Lahore',
                                              2,
                                              '12 jun 2021'),
                                          recommendedCard(
                                              context,
                                              'assets/png/maths10th.png',
                                              'Maths class 10th',
                                              'Board of Intermediate and Secondary Education (BISE) Lahore',
                                              2,
                                              '12 jun 2021'),
                                          recommendedCard(
                                              context,
                                              'assets/png/chemistry10.png',
                                              'Chemistry class 10th',
                                              'Board of Intermediate and Secondary Education (BISE) Lahore',
                                              2,
                                              '12 jun 2021'),
                                          recommendedCard(
                                              context,
                                              'assets/png/physics9th.png',
                                              'Physics class 09th',
                                              'Board of Intermediate and Secondary Education (BISE) Lahore',
                                              2,
                                              '12 jun 2021'),
                                        ],
                                      ),
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
