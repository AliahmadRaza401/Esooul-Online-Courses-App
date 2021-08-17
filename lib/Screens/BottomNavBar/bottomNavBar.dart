import 'package:esooul/Navigator/pageNavigator.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar(page: "home",)));

class BottomNavBar extends StatefulWidget {
  late String page;
  BottomNavBar({required this.page});
  @override
  _BottomNavBarState createState() => _BottomNavBarState(currentPage: page);
}

class _BottomNavBarState extends State<BottomNavBar> {
  _BottomNavBarState({required this.currentPage});
  // int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // final _indexPage = [Home(), Courses(), Wishlist(), Profile()];

  String currentPage = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(Icons.list, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Color(0xff393939),
          buttonBackgroundColor: Color(0xff00B0D7),
          backgroundColor: Color(0xff212121),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            if (index == 0) {
              setState(() {
                currentPage = "home";
              });
            } else if (index == 1) {
              setState(() {
                currentPage = "courses";
              });
            } else if (index == 2) {
              setState(() {
                currentPage = "favorite";
              });
            } else if (index == 3) {
              setState(() {
                currentPage = "profile";
              });
            }
            // setState(() {
            //   _selectedIndex = index;
            // });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Color(0xff212121),
          child: Center(
            child: PageNavigator(page: currentPage),
            // _indexPage.elementAt(_selectedIndex),
          ),
        ));
  }
}
