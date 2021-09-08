import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCard extends StatefulWidget {
  MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late CardProvider _cardProvider;
  bool _checkAll = false;
  @override
  void initState() {
    super.initState();
    _cardProvider = Provider.of<CardProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header(
            btntext: 'Card',
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: Colors.green,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0001,
                          ),
                          Consumer<CardProvider>(
                              builder: (context, item, child) {
                            return
                                //    _loader == true
                                // ? Center(child: LoadingBounceAnimation(context))
                                // :
                                item.cardItem.isEmpty
                                    ? Center(
                                        child: Text(
                                          "Card is empty!",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      )
                                    : ListView(
                                        shrinkWrap: true,
                                        physics: ClampingScrollPhysics(),
                                        children: [
                                          ListView.builder(
                                              shrinkWrap: true,
                                              physics: ClampingScrollPhysics(),
                                              itemCount:
                                                  item.cardItem.length == null
                                                      ? 0
                                                      : item.cardItem.length,
                                              itemBuilder: (context, i) {
                                                return
                                                    // cardContainer(
                                                    //     context,
                                                    //     item.cardItem[i].image,
                                                    //     item.cardItem[i].title,
                                                    //     item.cardItem[i].grade,
                                                    //     item.cardItem[i].desc,
                                                    //     item.cardItem[i].price,
                                                    //     item.cardItem[i].selected,
                                                    //     () {
                                                    //   setState(() {
                                                    //     item.deleteITem(index: i);
                                                    //   });
                                                    //   print(_cardProvider.cardItem);
                                                    // });
                                                    Container(
                                                  padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.005,
                                                    horizontal:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.02,
                                                  ),
                                                  margin: EdgeInsets.symmetric(
                                                    vertical:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.005,
                                                  ),
                                                  // height: MediaQuery.of(context).size.height * 0.13,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 5,
                                                          color: Colors.grey,
                                                          spreadRadius: 1)
                                                    ],
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      //1st Row
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Column(
                                                            children: [
                                                              Checkbox(
                                                                  checkColor:
                                                                      Colors
                                                                          .blue,
                                                                  value: item
                                                                      .cardItem[
                                                                          i]
                                                                      .selected,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      item
                                                                          .cardItem[
                                                                              i]
                                                                          .selected = value;

                                                                      // if (value ==
                                                                      //     false) {
                                                                      final check = _cardProvider
                                                                          .cardItem
                                                                          .every((element) =>
                                                                              element.selected);
                                                                      _checkAll =
                                                                          check;
                                                                      // }
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              Row(
                                                                children: [
                                                                  Column(
                                                                    children: [
                                                                      Container(
                                                                        height: MediaQuery.of(context).size.height *
                                                                            .06,
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .15,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(10),
                                                                            // color: Colors.amber,
                                                                            image: DecorationImage(
                                                                                image: NetworkImage(
                                                                                  item.cardItem[i].image,
                                                                                ),
                                                                                fit: BoxFit.fill)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .02,
                                                                  ),
                                                                  Column(
                                                                    children: [
                                                                      Container(
                                                                        // color: Colors.green,
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .5,
                                                                        child:
                                                                            Wrap(
                                                                          children: [
                                                                            Text(
                                                                              item.cardItem[i].title + item.cardItem[i].grade,
                                                                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // color: Colors.green,
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .5,
                                                                        child:
                                                                            Wrap(
                                                                          children: [
                                                                            Text(
                                                                              item.cardItem[i].desc,
                                                                              style: TextStyle(color: Colors.black),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Wrap(
                                                                            children: [
                                                                              Text(
                                                                                "PKR " + item.cardItem[i].price,
                                                                                style: TextStyle(color: Colors.blue),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              IconButton(
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: Colors
                                                                        .red,
                                                                    size: 30,
                                                                  ),
                                                                  // tooltip: 'Increase volume by 10',
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      item.deleteITem(
                                                                          index:
                                                                              i);
                                                                    });
                                                                    print(_cardProvider
                                                                        .cardItem);
                                                                  }),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              })
                                        ],
                                      );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Column(
                    children: [
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "Pay for all",
                            style: TextStyle(color: Colors.black),
                          ),
                          value: _checkAll,
                          onChanged: (value) {
                            setState(() {
                              _checkAll = value!;
                              _cardProvider.cardItem.forEach((element) {
                                element.selected = value;
                              });
                            });
                          }),
                      Divider(
                        height: 2,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total :",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "PKR 2000",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      SwipingButton(
                        text: "Swipe",
                        containerText: "to Pay",
                        onSwipeCallback: () {},
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  // cardContainer(
  //     BuildContext context,
  //     String imgPath,
  //     String subject,
  //     String grade,
  //     String description,
  //     String price,
  //     checkboxValue,
  //     Function delete,
  //     Function checkFunction) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //       vertical: MediaQuery.of(context).size.height * 0.005,
  //       horizontal: MediaQuery.of(context).size.width * 0.02,
  //     ),
  //     margin: EdgeInsets.symmetric(
  //       vertical: MediaQuery.of(context).size.height * 0.005,
  //     ),
  //     // height: MediaQuery.of(context).size.height * 0.13,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)
  //       ],
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         //1st Row
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             Column(
  //               children: [
  //                 // Checkbox(
  //                 //     value: checkboxValue,
  //                 //     onChanged: () {
  //                 //       checkFunction();
  //                 //     })
  //               ],
  //             ),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Row(
  //                   children: [
  //                     Column(
  //                       children: [
  //                         Container(
  //                           height: MediaQuery.of(context).size.height * .06,
  //                           width: MediaQuery.of(context).size.width * .15,
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(10),
  //                               // color: Colors.amber,
  //                               image: DecorationImage(
  //                                   image: NetworkImage("$imgPath"),
  //                                   fit: BoxFit.fill)),
  //                         ),
  //                       ],
  //                     ),
  //                     SizedBox(
  //                       width: MediaQuery.of(context).size.width * .02,
  //                     ),
  //                     Column(
  //                       children: [
  //                         Container(
  //                           // color: Colors.green,
  //                           width: MediaQuery.of(context).size.width * .5,
  //                           child: Wrap(
  //                             children: [
  //                               Text(
  //                                 subject + grade,
  //                                 style: TextStyle(
  //                                     color: Colors.black,
  //                                     fontWeight: FontWeight.bold),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           // color: Colors.green,
  //                           width: MediaQuery.of(context).size.width * .5,
  //                           child: Wrap(
  //                             children: [
  //                               Text(
  //                                 description,
  //                                 style: TextStyle(color: Colors.black),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           // color: Colors.green,
  //                           width: MediaQuery.of(context).size.width * .5,
  //                           child: Wrap(
  //                             children: [
  //                               Text(
  //                                 price,
  //                                 style: TextStyle(color: Colors.black),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 IconButton(
  //                   icon: const Icon(
  //                     Icons.delete,
  //                     color: Colors.red,
  //                     size: 30,
  //                   ),
  //                   // tooltip: 'Increase volume by 10',
  //                   onPressed: () {
  //                     delete();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
