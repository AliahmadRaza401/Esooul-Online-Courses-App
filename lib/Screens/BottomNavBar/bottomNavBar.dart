import 'package:esooul/Navigator/pageNavigator.dart';
import 'package:esooul/Screens/Courses/courses.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/Profile/Setting.dart';
import 'package:esooul/Screens/Profile/profile.dart';
import 'package:esooul/Screens/WishList/wishList.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final _indexPage = [Home(), Courses(), Wishlist(), Profile()];

  // // String currentPage;
  // var activeIndex;
  // var current;

  // List<Widget> pageList = [
  //   Home(),
  //   Courses(),
  //   Wishlist(),
  //   Profile(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _selectedIndex,
        height: 60.0,
        items: <Widget>[
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: _selectedIndex == 0
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(-3, -3), // changes position of shadow
                      ),
                    ],
                  )
                : null,
            child: Image.asset(
              "assets/png/homeIcon.png",
              color: _selectedIndex == 0 ? Color(0xff00B0D7) : Colors.white,
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: _selectedIndex == 1
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(-3, -3), // changes position of shadow
                      ),
                    ],
                  )
                : null,
            child: Image.asset(
              'assets/png/courses.png',
              color: _selectedIndex == 1 ? Color(0xff00B0D7) : Colors.white,
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: _selectedIndex == 2
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(-3, -3), // changes position of shadow
                      ),
                    ],
                  )
                : null,
            child: Icon(
              Icons.favorite,
              size: 30,
              color: _selectedIndex == 2 ? Color(0xff00B0D7) : Colors.white,
            ),
          ),
          Container(
              // margin: EdgeInsets.symmetric(horizontal: 50),
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: _selectedIndex == 3
                  ? BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(-3, -3), // changes position of shadow
                        ),
                      ],
                    )
                  : null,
              child: Image.asset(
                "assets/png/profileIcon.png",
                color: _selectedIndex == 3 ? Color(0xff00B0D7) : Colors.white,
              )),
        ],
        color: Color(0xff4091C5),
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // if (index == 0) {
          //   setState(() {
          //     // currentPage = "home";
          //     _selectedIndex = 0;
          //   });
          // } else if (index == 1) {
          //   setState(() {
          //     // currentPage = "courses";
          //     _selectedIndex = 1;
          //   });
          // } else if (index == 2) {
          //   setState(() {
          //     // currentPage = "favorite";
          //     _selectedIndex = 2;
          //   });
          // } else if (index == 3) {
          //   setState(() {
          //     // currentPage = "profile";
          //     activeIndex = 3;
          //   });
          // }
        },
        letIndexChange: (index) => true,
      ),
      // body: IndexedStack(index: activeIndex, children: pageList),
      body: Container(
        // color: Color(0xff212121),
        child: Center(
          // child: PageNavigator(page: currentPage),
          child: _indexPage.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
