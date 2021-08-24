import 'package:esooul/Screens/Home/home_provider.dart';
import 'package:esooul/Screens/Home/home_widgets.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var boardAreaData;

class _HomeState extends State<Home> {
  late HomeProvider _homeProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeProvider = Provider.of(context, listen: false);
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
                    padding: EdgeInsets.all(20).copyWith(top: 15),
                    // height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [Image.asset("assets/png/homelogo.png")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Hi, John ",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .02,
                                    ),
                                    Image.asset("assets/png/hi.png")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Lets start Learning",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/png/search.png"),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .02,
                                    ),
                                    Image.asset(
                                      "assets/png/notification.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .02,
                                    ),
                                    Image.asset(
                                      "assets/png/cart.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .015,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                "Invite Friend",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Image.asset('assets/png/share.png')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * .01),
                              suffixIcon:
                                  Image.asset('assets/png/chevron-down.png'),
                              prefixIcon: Image.asset('assets/png/airplay.png'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Color(0xffC3C5C9)),
                              hintText: 'Select your board',
                              fillColor: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boardsCard(
                                  context,
                                  'assets/png/federal.png',
                                  'Federal ',
                                  'Federal Board of Intermediate and Secondary Education (FBISE), Islamabad'),
                              boardsCard(
                                  context,
                                  'assets/png/punjab.png',
                                  'Punjab ',
                                  'Punjab Board of Technical Education'),
                              boardsCard(
                                  context,
                                  'assets/png/sindh.png',
                                  'Sindh ',
                                  'Intermediate Board of Education Karachi, Bakhtairi Youth Center, North Nazimabad'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boardsCard(context, 'assets/png/kpk.png', 'KPK ',
                                  'Board of Intermediate and Secondary Education (BISE)'),
                              boardsCard(
                                  context,
                                  'assets/png/balochistan.png',
                                  'Balochistan ',
                                  'Balochistan Board of Intermediate and Secondary Education'),
                              boardsCard(
                                  context,
                                  'assets/png/kashmir.png',
                                  'Kashmir',
                                  'AJK Board of Intermediate and Secondary Education, Islamabad'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recommended for you",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text("Show All",
                                  style: TextStyle(color: Color(0xff7EE8FF)))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .01),
                          width: MediaQuery.of(context).size.width * .99,
                          height: MediaQuery.of(context).size.height * .28,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                recommendedCard(
                                    context,
                                    'assets/png/geography.png',
                                    'Issues in Canadian Geography,',
                                    'Ponum Ghazanfar',
                                    'History',
                                    2,
                                    '12 jun 2021'),
                                recommendedCard(
                                    context,
                                    'assets/png/geography2.png',
                                    'Issues in Canadian Geography,',
                                    'Ponum Ghazanfar',
                                    'History',
                                    2,
                                    '12 jun 2021'),
                                recommendedCard(
                                    context,
                                    'assets/png/geography.png',
                                    'Issues in Canadian Geography,',
                                    'Ponum Ghazanfar',
                                    'History',
                                    2,
                                    '12 jun 2021'),
                                recommendedCard(
                                    context,
                                    'assets/png/geography2.png',
                                    'Issues in Canadian Geography,',
                                    'Ponum Ghazanfar',
                                    'History',
                                    2,
                                    '12 jun 2021'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
