import 'package:esooul/Screens/Courses/courses.dart';
import 'package:esooul/Screens/card/card.dart';
import 'package:esooul/Screens/paper_type/commin_soon_message.dart';

import 'package:flutter/material.dart';
import 'package:blinking_text/blinking_text.dart';

Widget boardsCard(
  BuildContext context,
  String img,
  String title,
  String desc,
) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * .001,
      left: MediaQuery.of(context).size.width * .01,
    ),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(3, 0),
          ),
        ],
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.height * .02),
        color: Color(0xffFFFFFF)),
    height: MediaQuery.of(context).size.height * .19,
    width: MediaQuery.of(context).size.width * .295,
    child: Padding(
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * .02),
                ),
                height: MediaQuery.of(context).size.height * .07,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .24,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Wrap(
                        children: [
                          Text(
                            "$desc",
                            style: TextStyle(
                                color: Color(0xff757070), fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'see more',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget recommendedCard(BuildContext context, String img, String name,
    String board, double likes, String date) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.only(right: 15),
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .12,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "$img",
                  height: MediaQuery.of(context).size.height * .12,
                  // width: MediaQuery.of(context).size.width * .2,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .02,
            ),
            Container(
              // color: Colors.amber,
              height: MediaQuery.of(context).size.height * .1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Container(
                      // color: Colors.black,
                      width: MediaQuery.of(context).size.width * .53,
                      child: Wrap(
                        children: [
                          Text('$board',
                              style: TextStyle(
                                  color: Color(0xff8C8585), fontSize: 12))
                        ],
                      )),
                  Row(
                    children: [
                      Text("Likes $likes K    ",
                          style: TextStyle(
                              color: Color(0xff72C6EF), fontSize: 10)),
                      Text("Created $date",
                          style:
                              TextStyle(color: Color(0xff999999), fontSize: 10))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .07,
                left: MediaQuery.of(context).size.width * .005,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
            )
          ],
        )),
  );
}

homeHeader(BuildContext context, fName) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // color: Colors.amber,
          child: Row(
            children: [
              Image.asset(
                "assets/png/EsoulLogo.png",
                width: MediaQuery.of(context).size.width * .32,
              )
            ],
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hy!",
                        style: TextStyle(fontSize: 17),
                      ),
                      // SizedBox(
                      //   // width: MediaQuery.of(context).size.width * .01,
                      // ),
                      Image.asset(
                        "assets/png/hi.gif",
                        height: 30,
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/png/nsearch.png",
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      Image.asset(
                        "assets/png/nnotification.png",
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyCard()));
                        },
                        child: Image.asset(
                          "assets/png/ncart.png",
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .02),

          // color: Colors.green,
          child: Row(
            children: [
              Text(
                "Lets start Learning",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .015,
        ),
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .02),

          // color: Colors.blueGrey,
          child: GestureDetector(
            onTap: () {
              return invitefriendAlert(context);
            },
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
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        TextField(
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01),
              suffixIcon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              prefixIcon: Image.asset('assets/png/airplay.png'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              filled: true,
              hintStyle: TextStyle(color: Color(0xffC3C5C9)),
              hintText: 'Select your board',
              fillColor: Colors.white),
        ),
      ],
    ),
  );
}

invitefriendAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => new AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(0, 60, 0, 10),
      actionsPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      // actionPadding:
      content: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: Image.asset(
                "assets/png/Instagram.png",
                width: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            GestureDetector(
                child: Image.asset(
              "assets/png/Twitter.png",
              width: MediaQuery.of(context).size.width * 0.13,
            )),
            GestureDetector(
                child: Image.asset(
              "assets/png/Linkedin.png",
              width: MediaQuery.of(context).size.width * 0.13,
            )),
            GestureDetector(
                child: Image.asset(
              "assets/png/Facebook.png",
              width: MediaQuery.of(context).size.width * 0.13,
            )),
            GestureDetector(
                child: Image.asset(
              "assets/png/YouTube.png",
              width: MediaQuery.of(context).size.width * 0.13,
            )),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.60,
                  MediaQuery.of(context).size.height * 0.050),
              primary: Color(0xffEBEBEB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // <-- Radius
              ),
            ),
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(); // dismisses only the dialog and returns nothing
            },
            child: new Text(
              'Invite with Referal Code',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget guessPaper(BuildContext context, String bgImg, String name) {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NodataMessage()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(20)),
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * .29,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage("$bgImg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width * .28,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .005),
              Text(
                "$name",
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget importantText(BuildContext context, String title, String desc) {
  return Padding(
    padding: const EdgeInsets.all(
      10,
    ).copyWith(top: 20),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        color: Color(0xffF1F1F1),
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .05,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0xff00B0D7),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .015,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      BlinkText(
                        "$title",
                        style: TextStyle(
                            color: Color(0xff00B0D7),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget recomendedtext(BuildContext context, String title, String desc) {
  return Padding(
    padding: const EdgeInsets.all(
      10,
    ).copyWith(top: 20),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        color: Color(0xffF1F1F1),
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .05,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0xff00B0D7),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .015,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      Text(
                        "$title",
                        style: TextStyle(
                            color: Color(0xff00B0D7),
                            fontWeight: FontWeight.bold),
                      )
                      // BlinkText(
                      //   "$title",
                      //   style: TextStyle(
                      //       color: Color(0xff00B0D7),
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Courses()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$desc", style: TextStyle(color: Color(0xff004E8F))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
