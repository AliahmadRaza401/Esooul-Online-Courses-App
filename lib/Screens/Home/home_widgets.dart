import 'package:esooul/Screens/boards_list/board_list.dart';
import 'package:flutter/material.dart';

Widget boardsCard(
  BuildContext context,
  String img,
  String title,
  String desc,
) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SelectBoard()));
    },
    child: Container(
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
              offset: Offset(3, 0), // changes position of shadow
            ),
          ],
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
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
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
    ),
  );
}

Widget recommendedCard(BuildContext context, String img, String name,
    String techr, String category, double likes, String date) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "$img",
                  height: MediaQuery.of(context).size.height * .12,
                  width: MediaQuery.of(context).size.width * .33,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(color: Colors.black),
                ),
                Text('$techr', style: TextStyle(color: Color(0xff2F2F2F))),
                Text(
                  "Category - $category",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                ),
                Row(
                  children: [
                    Text("Likes $likes K    ",
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                    Text("Created $date",
                        style: TextStyle(color: Colors.black, fontSize: 12))
                  ],
                )
              ],
            )
          ],
        )),
  );
}

homeHeader(BuildContext context) {
  return Container(
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
                      width: MediaQuery.of(context).size.width * .02,
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
                      width: MediaQuery.of(context).size.width * .02,
                    ),
                    Image.asset(
                      "assets/png/notification.png",
                      height: MediaQuery.of(context).size.height * .04,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .02,
                    ),
                    Image.asset(
                      "assets/png/cart.png",
                      height: MediaQuery.of(context).size.height * .04,
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
                  top: MediaQuery.of(context).size.height * .01),
              suffixIcon: Image.asset('assets/png/chevron-down.png'),
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
