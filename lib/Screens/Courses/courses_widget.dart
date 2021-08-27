import 'package:esooul/Screens/paper_categorey/paper_categorey.dart';
import 'package:flutter/material.dart';

class CoursesWidget extends StatefulWidget {
  String imgPath;
  String subject;
  String board;

  String likes;
  String date;

  CoursesWidget(
      {Key? key,
      required this.imgPath,
      required this.subject,
      required this.board,
      required this.likes,
      required this.date})
      : super(key: key);

  @override
  _CoursesWidgetState createState() => _CoursesWidgetState();
}

class _CoursesWidgetState extends State<CoursesWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaperCategorey()),
        );
      },
      child: Container(
        // padding: EdgeInsets.fromLTRB(5, 10.0, 1, 10),
        height: MediaQuery.of(context).size.height * .12,
        width: double.infinity,
        //width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //1st Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        widget.imgPath,
                      ),
                    ],
                  ),
                ),
             
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.subject,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    Text(
                      widget.board,
                      style: TextStyle(color: Color(0xffC4C4C4), fontSize: 12),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.likes,
                          style: TextStyle(
                              color: Color(0xff72C6EF), fontSize: 10),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Text(
                          widget.date,
                          style: TextStyle(
                              color: Color(0xff999999), fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(width: 10,),
                Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),

            //2nd row
            // Row(
            //   children: <Widget>[
            //     Container(
            //       width: double.infinity,
            //       height: MediaQuery.of(context).size.height * 0.20,
            //       decoration: BoxDecoration(
            //         color: Color(0xff646464),
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: Row(
            //         children: <Widget>[
            //           Column(
            //             children: <Widget>[
            //               Container(
            //                 decoration: BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   color: Color(0xff464646),
            //                 ),
            //                 child: Center(
            //                   child: Text("01"),
            //                 ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
