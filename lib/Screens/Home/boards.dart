import 'package:flutter/material.dart';

class Boards extends StatefulWidget {
  const Boards({Key? key}) : super(key: key);

  @override
  _BoardsState createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .01,
        right: MediaQuery.of(context).size.width * .01,

      ),
      height: MediaQuery.of(context).size.height * .35,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select your Board",
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
                  width: MediaQuery.of(context).size.width * .5,
                )
              ],
            ),
            Wrap(
              children: [
                board("assets/png/ractangle.png", 'assets/png/cambrig.png',
                    "Cambridge"),
                board("assets/png/Rectangle 1.png", 'assets/png/logo book.png',
                    "Canadian"),
                board("assets/png/Rectangle 2.png", 'assets/png/Group@2x.png',
                    "American"),
                board("assets/png/Rectangle 3.png", 'assets/png/aus logo.png',
                    "Australian"),
                board("assets/png/Rectangle 4.png", 'assets/png/otherLogo.png',
                    "Others"),
                board("assets/png/Rectangle 5.png", 'assets/png/cambrig.png',
                    "Cambridge"),
              ],
            ),

             
          ],
        ),
      ),
    );
  }

  Widget board(String backimage, String logo, String title) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .01,
        left: MediaQuery.of(context).size.width * .01,
        right: MediaQuery.of(context).size.width * .015,
        bottom: MediaQuery.of(context).size.height * .01,
      ),
      height: MediaQuery.of(context).size.height * .11,
      width: MediaQuery.of(context).size.width * .28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(backimage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo),
          Text(
            title,
            style: TextStyle( fontSize: 17),
          )
        ],
      ),
    );
  }
}
