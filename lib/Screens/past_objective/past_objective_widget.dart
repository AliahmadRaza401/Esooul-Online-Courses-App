  import 'package:flutter/material.dart';



Widget videoContainer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10)
                  .copyWith(right: MediaQuery.of(context).size.width * .1),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .09,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/png/video.png"),
                                fit: BoxFit.cover)),
                        child: Image.asset("assets/png/play.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Topic 01-lorem isum",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .008,
                          ),
                          Text(
                            "Click here for video",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

