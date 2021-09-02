import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ansWithVideo(BuildContext context, number, String title) {
  return GestureDetector(
    onTap: () {
      snackBar("Comming Soon...");
    },
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/png/playvideo.png",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Wrap(
                                  children: [
                                    Text(
                                      "$number " + "$title",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.003,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "05:30 min",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.003,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Text("hello world",
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //     )),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                                decoration: BoxDecoration(
                                    color: Color(0xffC4C4C4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.050,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        decoration: BoxDecoration(
                                          color: Color(0xff00B0D7),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

void snackBar(String s) {}
