import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Screens/paper_categorey/paper_categorey.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/modeles/course_card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoursesWidget extends StatefulWidget {
  String imgPath;
  String subject;
  String board;
  String grade;
  String orgPrice;
  String showPrice;
  var courseID;

  CoursesWidget(
      {Key? key,
      required this.imgPath,
      required this.subject,
      required this.board,
      required this.orgPrice,
      required this.showPrice,
      required this.grade,
      required this.courseID})
      : super(key: key);

  @override
  _CoursesWidgetState createState() => _CoursesWidgetState();
}

class _CoursesWidgetState extends State<CoursesWidget> {
  late CardProvider _cardProvider;
  late SubjectListProvider _subjectListProvider;
  @override
  void initState() {
    super.initState();
    _cardProvider = Provider.of<CardProvider>(context, listen: false);
    _subjectListProvider =
        Provider.of<SubjectListProvider>(context, listen: false);
  }

  // addToCard() {
  //   // _cardProvider.cardItem.add(value);
  //   _cardProvider.cardItem.add(CardItemModel(
  //       "123", "qwr4", "9", "23rsdafasdf", "sxvasd", "adsdf234d", "asdfasdf"));
  //   print("card  ${_cardProvider.cardItem[0].price}");
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("ID: ${widget.courseID}");
        setState(() {
          _subjectListProvider.selectedcourse = widget.courseID;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PaperCategorey(
                    courseID: widget.courseID,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 10.0, 1, 10),
          height: MediaQuery.of(context).size.height * .13,
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
                    padding: const EdgeInsets.only(right: 15, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(widget.imgPath),
                                fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    // color: Colors.amber,
                    // height: MediaQuery.of(context).size.width * .2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // color: Colors.amber,
                          width: MediaQuery.of(context).size.width * .58,
                          child: Text(
                            '${widget.subject}' + "-" + '${widget.grade}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.001,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .55,
                          child: Wrap(
                            children: [
                              Text(
                                widget.board,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        Container(
                          // height: 50,
                          // color: Colors.amber,
                          width: MediaQuery.of(context).size.width * .6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.orgPrice,
                                style: TextStyle(
                                    color: Color(0xff72C6EF), fontSize: 13),
                              ),
                              Text(widget.showPrice,
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.lineThrough)),
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.020,
                              // ),
                              GestureDetector(
                                onTap: () {
                                  // widget.addTocard();
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                //  Text(
                                //   "Add To Card",
                                //   style: TextStyle(
                                //       color: Colors.blue, fontSize: 12),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 10,),
                  // Column(
                  //   children: [
                  //     Icon(
                  //       Icons.favorite,
                  //       color: Colors.red,
                  //       size: 30,
                  //     ),
                  //   ],
                  // ),
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
      ),
    );
  }
}
