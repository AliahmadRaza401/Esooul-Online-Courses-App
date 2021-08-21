import 'package:esooul/Navigator/pageNavigator.dart';
<<<<<<< HEAD
=======

>>>>>>> f83d03f5228d89e81bfa4882276aa35cfd79bae4
import 'package:esooul/Screens/Courses/courses.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/Profile/Setting.dart';
import 'package:esooul/Screens/Profile/profile.dart';
import 'package:esooul/Screens/WishList/wishList.dart';
<<<<<<< HEAD
=======

>>>>>>> f83d03f5228d89e81bfa4882276aa35cfd79bae4
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  var activeIndex;
  BottomNavBar({required this.activeIndex});
  @override
  _BottomNavBarState createState() =>
      _BottomNavBarState(activeIndex: activeIndex);
}

class _BottomNavBarState extends State<BottomNavBar> {
  _BottomNavBarState({required this.activeIndex});
  // int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // final _indexPage = [Home(), Courses(), Wishlist(), Profile()];

  // String currentPage;
  var activeIndex;
  var current;

  List<Widget> pageList = [
    Home(),
    Courses(),
    Wishlist(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: current == null ? 0 : current,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Image.asset('assets/png/courses.png'),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Color(0xff393939),
        buttonBackgroundColor: Color(0xff00B0D7),
        backgroundColor: Color(0xff212121),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            current = index;
          });
          if (index == 0) {
            setState(() {
              // currentPage = "home";
              activeIndex = 0;
            });
          } else if (index == 1) {
            setState(() {
              // currentPage = "courses";
              activeIndex = 1;
            });
          } else if (index == 2) {
            setState(() {
              // currentPage = "favorite";
              activeIndex = 2;
            });
          } else if (index == 3) {
            setState(() {
              // currentPage = "profile";
              activeIndex = 3;
            });
          }
          // setState(() {
          //   _selectedIndex = index;
          // });
        },
        letIndexChange: (index) => true,
      ),
      body: IndexedStack(index: activeIndex, children: pageList),
      // body: Container(
      //   color: Color(0xff212121),
      //   child: Center(
      //     child: PageNavigator(page: currentPage),
      //     // _indexPage.elementAt(_selectedIndex),
      //   ),
      // ),
    );
  }
}
