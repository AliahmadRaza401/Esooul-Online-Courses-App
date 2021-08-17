import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      // height: MediaQuery.of(context).size.height * .21,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.black,
                      Colors.white,
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * .002,
                width: MediaQuery.of(context).size.width * .67,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Wrap(
            spacing: 5,
            children: [
              button("Art & Design", ""),
              button("Engineering", ""),
              button("Information Technology", ""),
              button('Medical Sciences', ''),
              button('Business', ''),
              button('Humanities', ''),
              button('History', '')
            ],
          )
        ],
      ),
    );
  }

  Widget button(String title, String navigator) {
    return Padding(
      padding: const EdgeInsets.all(.5),
      child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => BottomNavBar(activeIndex: ,)));
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff2F2F2F),
            side: BorderSide(width: 1, color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Text(title, style: TextStyle(fontSize: 13))),
    );
  }
}
