import 'package:flutter/material.dart';

Widget smallcards(
  BuildContext context,
  String img,
  String title,
  String desc,
) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * .001,
      left: MediaQuery.of(context).size.width * .005,
    ),
    decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.height * .02),
        color: Color(0xffFFFFFF)),
    height: MediaQuery.of(context).size.height * .18,
    width: MediaQuery.of(context).size.width * .295,
    child: Padding(
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height * .02),
            ),
            height: MediaQuery.of(context).size.height * .06,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                    Container(
                      width: MediaQuery.of(context).size.width * .23,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Wrap(
                        children: [
                          Text(
                            "$desc",
                            style:
                                TextStyle(color: Color(0xff757070), fontSize: 8),
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
