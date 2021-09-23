import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
import 'package:esooul/Widgets/varaibles/mainActionButton.dart';
import 'package:esooul/payment/jazz_cash_payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseCard extends StatefulWidget {
  CourseCard({Key? key}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  late CardProvider _cardProvider;
  bool _checkAll = false;
  var totalprice = 0;
  @override
  void initState() {
    super.initState();
    _cardProvider = Provider.of<CardProvider>(context, listen: false);
    totalprice = _cardProvider.coursePrice;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(children: [
        Container(
          // height: MediaQuery.of(context).size.height * 0.68,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.51,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0001,
                        ),
                        Consumer<CardProvider>(builder: (context, item, child) {
                          return
                              //    _loader == true
                              // ? Center(child: LoadingBounceAnimation(context))
                              // :
                              item.courseCardItem.isEmpty
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
                                            itemCount: item.courseCardItem
                                                        .length ==
                                                    null
                                                ? 0
                                                : item.courseCardItem.length,
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
                                                        blurRadius: 1,
                                                        color: Colors.grey,
                                                        spreadRadius: 0.2)
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
                                                                    Colors.blue,
                                                                value: item
                                                                    .courseCardItem[
                                                                        i]
                                                                    .selected,
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() {
                                                                    item
                                                                        .courseCardItem[
                                                                            i]
                                                                        .selected = value;

                                                                    // if (value ==
                                                                    //     false) {
                                                                    final check = _cardProvider
                                                                        .courseCardItem
                                                                        .every((element) =>
                                                                            element.selected);
                                                                    _checkAll =
                                                                        check;
                                                                    if (item.courseCardItem[i]
                                                                            .selected ==
                                                                        true) {
                                                                      int orgPrice = item
                                                                          .courseCardItem[
                                                                              i]
                                                                          .price;
                                                                      print(
                                                                          'orgPrice: ${orgPrice.toString()}');

                                                                      _cardProvider
                                                                          .coursePrice = _cardProvider
                                                                              .coursePrice +
                                                                          orgPrice;
                                                                      print(
                                                                          ' _cardProvider.price: ${_cardProvider.coursePrice}');
                                                                      setState(
                                                                          () {
                                                                        totalprice =
                                                                            _cardProvider.totalCoursePrice();
                                                                      });
                                                                    } else if (item
                                                                            .courseCardItem[i]
                                                                            .selected ==
                                                                        false) {
                                                                      int orgPrice = item
                                                                          .courseCardItem[
                                                                              i]
                                                                          .price;
                                                                      print(
                                                                          'orgPrice: ${orgPrice.toString()}');

                                                                      _cardProvider
                                                                          .coursePrice = _cardProvider
                                                                              .coursePrice -
                                                                          orgPrice;
                                                                      print(
                                                                          ' _cardProvider.price: ${_cardProvider.coursePrice}');
                                                                      setState(
                                                                          () {
                                                                        totalprice =
                                                                            _cardProvider.totalCoursePrice();
                                                                      });
                                                                    }
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
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .06,
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .15,
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(10),
                                                                          // color: Colors.amber,
                                                                          image: DecorationImage(
                                                                              image: NetworkImage(
                                                                                item.courseCardItem[i].image,
                                                                              ),
                                                                              fit: BoxFit.fill)),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .02,
                                                                ),
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      // color: Colors.green,
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .5,
                                                                      child:
                                                                          Wrap(
                                                                        children: [
                                                                          Text(
                                                                            item.courseCardItem[i].title +
                                                                                item.courseCardItem[i].course,
                                                                            style:
                                                                                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    // Container(
                                                                    //   // color: Colors.green,
                                                                    //   width: MediaQuery.of(context)
                                                                    //           .size
                                                                    //           .width *
                                                                    //       .5,
                                                                    //   child:
                                                                    //       Wrap(
                                                                    //     children: [
                                                                    //       Text(
                                                                    //         item.courseCardItem[i].year,
                                                                    //         style:
                                                                    //             TextStyle(color: Colors.black),
                                                                    //       ),
                                                                    //     ],
                                                                    //   ),
                                                                    // ),
                                                                    Container(
                                                                      // color: Colors
                                                                      //     .green,
                                                                      // margin: EdgeInsets
                                                                      //     .only(
                                                                      //         top: 5),
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .5,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Wrap(
                                                                            children: [
                                                                              Text(
                                                                                item.courseCardItem[i].year,
                                                                                style: TextStyle(color: Colors.black),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Wrap(
                                                                            children: [
                                                                              Text("PKR " + item.courseCardItem[i].price.toString(),
                                                                                  style: TextStyle(
                                                                                    color: Colors.blue,
                                                                                  )),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
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
                                                                  Icons.delete,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 30,
                                                                ),
                                                                // tooltip: 'Increase volume by 10',
                                                                onPressed: () {
                                                                  setState(() {
                                                                    int orgPrice = item
                                                                        .courseCardItem[
                                                                            i]
                                                                        .price;

                                                                    _cardProvider
                                                                        .coursePrice = _cardProvider
                                                                            .coursePrice -
                                                                        orgPrice;

                                                                    totalprice =
                                                                        totalprice -
                                                                            orgPrice;

                                                                    item.deleteCourseItem(
                                                                        index:
                                                                            i);
                                                                  });
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
                    bottom: MediaQuery.of(context).size.height * 0.0),
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
                            if (_checkAll == true) {
                              setState(() {
                                _cardProvider.coursePrice = 0;
                                totalprice = 0;
                              });
                            }

                            _cardProvider.courseCardItem.forEach((element) {
                              element.selected = value;

                              if (_checkAll == true) {
                                _cardProvider.coursePrice =
                                    _cardProvider.coursePrice + element.price
                                        as int;
                                print(
                                    ' _cardProvider.price: ${_cardProvider.coursePrice}');
                                setState(() {
                                  totalprice = _cardProvider.totalCoursePrice();
                                });
                              } else if (_checkAll == false) {
                                setState(() {
                                  _cardProvider.coursePrice = 0;
                                  totalprice = 0;
                                  print(
                                      '_cardProvider.topicPrice: ${_cardProvider.coursePrice}');
                                });
                              }
                            });
                          });
                        }),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total :",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            "PKR: " + totalprice.toString(),
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    mainActionButton(context, Text("Pay"), () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => JazzCashPayment()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

















// import 'package:esooul/Screens/card/card_provider.dart';
// import 'package:esooul/Widgets/header.dart';
// import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
// import 'package:esooul/payment/jazz_cash_payment.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class CourseCard extends StatefulWidget {
//   CourseCard({Key? key}) : super(key: key);

//   @override
//   _CourseCardState createState() => _CourseCardState();
// }

// class _CourseCardState extends State<CourseCard> {
//   late CardProvider _cardProvider;
//   bool _checkAll = false;
//   @override
//   void initState() {
//     super.initState();
//     _cardProvider = Provider.of<CardProvider>(context, listen: false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Column(children: [
//           Header(
//             btntext: 'Card',
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.7,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   // color: Colors.green,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.0001,
//                           ),
//                           Consumer<CardProvider>(
//                               builder: (context, item, child) {
//                             return
//                                 //    _loader == true
//                                 // ? Center(child: LoadingBounceAnimation(context))
//                                 // :
//                                 item.cardItem.isEmpty
//                                     ? Center(
//                                         child: Text(
//                                           "Card is empty!",
//                                           style: TextStyle(color: Colors.black),
//                                         ),
//                                       )
//                                     : ListView(
//                                         shrinkWrap: true,
//                                         physics: ClampingScrollPhysics(),
//                                         children: [
//                                           ListView.builder(
//                                               shrinkWrap: true,
//                                               physics: ClampingScrollPhysics(),
//                                               itemCount:
//                                                   item.cardItem.length == null
//                                                       ? 0
//                                                       : item.cardItem.length,
//                                               itemBuilder: (context, i) {
//                                                 return
//                                                     // cardContainer(
//                                                     //     context,
//                                                     //     item.cardItem[i].image,
//                                                     //     item.cardItem[i].title,
//                                                     //     item.cardItem[i].grade,
//                                                     //     item.cardItem[i].desc,
//                                                     //     item.cardItem[i].price,
//                                                     //     item.cardItem[i].selected,
//                                                     //     () {
//                                                     //   setState(() {
//                                                     //     item.deleteITem(index: i);
//                                                     //   });
//                                                     //   print(_cardProvider.cardItem);
//                                                     // });
//                                                     Container(
//                                                   padding: EdgeInsets.symmetric(
//                                                     vertical:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .height *
//                                                             0.005,
//                                                     horizontal:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width *
//                                                             0.02,
//                                                   ),
//                                                   margin: EdgeInsets.symmetric(
//                                                     vertical:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .height *
//                                                             0.005,
//                                                   ),
//                                                   // height: MediaQuery.of(context).size.height * 0.13,
//                                                   width: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     boxShadow: [
//                                                       BoxShadow(
//                                                           blurRadius: 1,
//                                                           color: Colors.grey,
//                                                           spreadRadius: 0.2)
//                                                     ],
//                                                     color: Colors.white,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             10),
//                                                   ),
//                                                   child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       //1st Row
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .spaceBetween,
//                                                         children: <Widget>[
//                                                           Column(
//                                                             children: [
//                                                               Checkbox(
//                                                                   checkColor:
//                                                                       Colors
//                                                                           .blue,
//                                                                   value: item
//                                                                       .cardItem[
//                                                                           i]
//                                                                       .selected,
//                                                                   onChanged:
//                                                                       (value) {
//                                                                     setState(
//                                                                         () {
//                                                                       item
//                                                                           .cardItem[
//                                                                               i]
//                                                                           .selected = value;

//                                                                       // if (value ==
//                                                                       //     false) {
//                                                                       final check = _cardProvider
//                                                                           .cardItem
//                                                                           .every((element) =>
//                                                                               element.selected);
//                                                                       _checkAll =
//                                                                           check;
//                                                                       if (item.cardItem[i]
//                                                                               .selected ==
//                                                                           true) {
//                                                                         var orgPrice = item
//                                                                             .cardItem[i]
//                                                                             .orgPrice;
//                                                                         print(
//                                                                             'orgPrice: $orgPrice');

//                                                                         _cardProvider
//                                                                             .price = _cardProvider
//                                                                                 .price +
//                                                                             orgPrice;
//                                                                         print(
//                                                                             ' _cardProvider.price: ${_cardProvider.price}');
//                                                                         // _cardProvider
//                                                                         //     .totalPrice();

//                                                                         // _cardProvider
//                                                                         //     .addPrice(orgPrice);
//                                                                       } else {
//                                                                         var orgPrice = item
//                                                                             .cardItem[i]
//                                                                             .orgPrice;
//                                                                         print(
//                                                                             'orgPrice: $orgPrice');
//                                                                         print(
//                                                                             'Remove orgPrice: $orgPrice');

//                                                                         _cardProvider
//                                                                             .price = _cardProvider
//                                                                                 .price -
//                                                                             orgPrice;
//                                                                         print(
//                                                                             ' _cardProvider.price: ${_cardProvider.price}');
//                                                                         // _cardProvider
//                                                                         //     .totalPrice();

//                                                                       }
//                                                                     });
//                                                                   })
//                                                             ],
//                                                           ),
//                                                           Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceEvenly,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .start,
//                                                             children: <Widget>[
//                                                               Row(
//                                                                 children: [
//                                                                   Column(
//                                                                     children: [
//                                                                       Container(
//                                                                         height: MediaQuery.of(context).size.height *
//                                                                             .06,
//                                                                         width: MediaQuery.of(context).size.width *
//                                                                             .15,
//                                                                         decoration: BoxDecoration(
//                                                                             borderRadius: BorderRadius.circular(10),
//                                                                             // color: Colors.amber,
//                                                                             image: DecorationImage(
//                                                                                 image: NetworkImage(
//                                                                                   item.cardItem[i].image,
//                                                                                 ),
//                                                                                 fit: BoxFit.fill)),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: MediaQuery.of(context)
//                                                                             .size
//                                                                             .width *
//                                                                         .02,
//                                                                   ),
//                                                                   Column(
//                                                                     children: [
//                                                                       Container(
//                                                                         // color: Colors.green,
//                                                                         width: MediaQuery.of(context).size.width *
//                                                                             .5,
//                                                                         child:
//                                                                             Wrap(
//                                                                           children: [
//                                                                             Text(
//                                                                               item.cardItem[i].title + item.cardItem[i].grade,
//                                                                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                       Container(
//                                                                         // color: Colors.green,
//                                                                         width: MediaQuery.of(context).size.width *
//                                                                             .5,
//                                                                         child:
//                                                                             Wrap(
//                                                                           children: [
//                                                                             Text(
//                                                                               item.cardItem[i].desc,
//                                                                               style: TextStyle(color: Colors.black),
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                       Container(
//                                                                         // color: Colors
//                                                                         //     .green,
//                                                                         width: MediaQuery.of(context).size.width *
//                                                                             .5,
//                                                                         child:
//                                                                             Row(
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.spaceBetween,
//                                                                           children: [
//                                                                             Wrap(
//                                                                               children: [
//                                                                                 Text(
//                                                                                   "PKR " + item.cardItem[i].orgPrice,
//                                                                                   style: TextStyle(color: Colors.blue),
//                                                                                 ),
//                                                                               ],
//                                                                             ),
//                                                                             Wrap(
//                                                                               children: [
//                                                                                 Text("PKR " + item.cardItem[i].showPrice, style: TextStyle(color: Colors.black, decoration: TextDecoration.lineThrough)),
//                                                                               ],
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           Column(
//                                                             children: [
//                                                               IconButton(
//                                                                   icon:
//                                                                       const Icon(
//                                                                     Icons
//                                                                         .delete,
//                                                                     color: Colors
//                                                                         .red,
//                                                                     size: 30,
//                                                                   ),
//                                                                   // tooltip: 'Increase volume by 10',
//                                                                   onPressed:
//                                                                       () {
//                                                                     setState(
//                                                                         () {
//                                                                       item.deleteItem(
//                                                                           index:
//                                                                               i);
//                                                                     });
//                                                                   }),
//                                                             ],
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 );
//                                               })
//                                         ],
//                                       );
//                           }),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   padding: EdgeInsets.only(
//                       bottom: MediaQuery.of(context).size.height * 0.02),
//                   child: Column(
//                     children: [
//                       CheckboxListTile(
//                           controlAffinity: ListTileControlAffinity.leading,
//                           title: Text(
//                             "Pay for all",
//                             style: TextStyle(color: Colors.black),
//                           ),
//                           value: _checkAll,
//                           onChanged: (value) {
//                             setState(() {
//                               _checkAll = value!;
//                               _cardProvider.cardItem.forEach((element) {
//                                 element.selected = value;
//                               });
//                             });
//                           }),
//                       Divider(
//                         height: 2,
//                       ),
//                       Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Total :",
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.black),
//                             ),
//                             Text(
//                               "PKR 2000",
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.blue),
//                             )
//                           ],
//                         ),
//                       ),
//                       ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (context) => JazzCashPayment()));
//                           },
//                           child: Text("Pay")),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
