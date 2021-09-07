import 'package:esooul/Screens/paper_type/commin_soon_message.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Screens/Report/Report.dart';
import 'package:esooul/Screens/past_objective/past_obj_instruction.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyCard extends StatefulWidget {
  MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header(
            btntext: 'Card',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    // _loader == true
                    //     ? Center(child: LoadingBounceAnimation(context))
                    //     : _boardListProvider.boardListData.isEmpty
                    //         ? noDataMsg(context)
                    //         : ListView(
                    //             shrinkWrap: true,
                    //             physics: ClampingScrollPhysics(),
                    //             children: [
                    //               result == null
                    //                   ? noDataMsg(context)
                    //                   : ListView.builder(
                    //                       shrinkWrap: true,
                    //                       physics: ClampingScrollPhysics(),
                    //                       itemCount: result.length == null
                    //                           ? 0
                    //                           : result.length,
                    //                       itemBuilder: (context, i) {
                    //                         return _myContainer(
                    //                             result[i].title, result[i].id);
                    //                       })
                    //             ],
                    //           ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  _courseContainer(String imgPath, String subject, String author,
      String category, String discountPrice, String price) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 15),
      height: MediaQuery.of(context).size.height * 0.13,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //1st Row
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    imgPath,
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    subject,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    author,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        category,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.020,
                      ),
                      Text(
                        discountPrice,
                        style: TextStyle(color: Color(0xff00B0D7)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            color: Color(0xff949494),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                .07),
                                    primary: Color(0xff00B0D7),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg: "This is Center Short Toast",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Text(
                                    "Add to cart  Toasdt",
                                    style: TextStyle(fontSize: 13),
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                .07),
                                    primary: Color(0xff00B0D7),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Remove",
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
