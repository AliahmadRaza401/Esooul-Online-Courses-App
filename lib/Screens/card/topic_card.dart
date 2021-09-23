import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
import 'package:esooul/Widgets/varaibles/mainActionButton.dart';
import 'package:esooul/payment/jazz_cash_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopicCard extends StatefulWidget {
  TopicCard({Key? key}) : super(key: key);

  @override
  _TopicCardState createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard> {
  late CardProvider _cardProvider;
  bool _checkAll = false;
  var totalprice = 0;
  @override
  void initState() {
    super.initState();
    _cardProvider = Provider.of<CardProvider>(context, listen: false);
    totalprice = _cardProvider.topicPrice;

    print("topic Class");
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
                              item.topicCardItem.isEmpty
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
                                                item.topicCardItem.length ==
                                                        null
                                                    ? 0
                                                    : item.topicCardItem.length,
                                            itemBuilder: (context, i) {
                                              return Container(
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
                                                                    .topicCardItem[
                                                                        i]
                                                                    .selected,
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() {
                                                                    item
                                                                        .topicCardItem[
                                                                            i]
                                                                        .selected = value;

                                                                    // if (value ==
                                                                    //     false) {
                                                                    final check = _cardProvider
                                                                        .topicCardItem
                                                                        .every((element) =>
                                                                            element.selected);
                                                                    _checkAll =
                                                                        check;
                                                                    if (item.topicCardItem[i]
                                                                            .selected ==
                                                                        true) {
                                                                      int orgPrice = item
                                                                          .topicCardItem[
                                                                              i]
                                                                          .price;
                                                                      print(
                                                                          'orgPrice: ${orgPrice.toString()}');

                                                                      _cardProvider
                                                                          .topicPrice = _cardProvider
                                                                              .topicPrice +
                                                                          orgPrice;
                                                                      print(
                                                                          ' _cardProvider.price: ${_cardProvider.topicPrice}');
                                                                      setState(
                                                                          () {
                                                                        totalprice =
                                                                            _cardProvider.totalTopicPrice();
                                                                      });
                                                                    } else if (item
                                                                            .topicCardItem[i]
                                                                            .selected ==
                                                                        false) {
                                                                      int orgPrice = item
                                                                          .topicCardItem[
                                                                              i]
                                                                          .price;
                                                                      print(
                                                                          'orgPrice: ${orgPrice.toString()}');

                                                                      _cardProvider
                                                                          .topicPrice = _cardProvider
                                                                              .topicPrice -
                                                                          orgPrice;
                                                                      print(
                                                                          ' _cardProvider.price: ${_cardProvider.topicPrice}');
                                                                      setState(
                                                                          () {
                                                                        totalprice =
                                                                            _cardProvider.totalTopicPrice();
                                                                      });
                                                                    }
                                                                  });
                                                                })
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Row(
                                                              children: [
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    // Container(
                                                                    //   height: MediaQuery.of(context)
                                                                    //           .size
                                                                    //           .height *
                                                                    //       .06,
                                                                    //   width: MediaQuery.of(context)
                                                                    //           .size
                                                                    //           .width *
                                                                    //       .15,
                                                                    //   decoration: BoxDecoration(
                                                                    //       borderRadius: BorderRadius.circular(10),
                                                                    //       // color: Colors.amber,
                                                                    //       image: DecorationImage(
                                                                    //           image: NetworkImage(
                                                                    //             item.topicCardItem[i].image,
                                                                    //           ),
                                                                    //           fit: BoxFit.fill)),
                                                                    // ),
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
                                                                          .start,
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
                                                                            item.topicCardItem[i].title +
                                                                                "|" +
                                                                                item.topicCardItem[i].course,
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
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Wrap(
                                                                            children: [
                                                                              Text(
                                                                                item.topicCardItem[i].discount == null ? "Discount: 0%" : "Discount: " + item.topicCardItem[i].discount + "%",
                                                                                style: TextStyle(color: Colors.black),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Wrap(
                                                                            children: [
                                                                              Text("PKR " + item.topicCardItem[i].price.toString(),
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
                                                                        .topicCardItem[
                                                                            i]
                                                                        .price;

                                                                    _cardProvider
                                                                        .topicPrice = _cardProvider
                                                                            .topicPrice -
                                                                        orgPrice;

                                                                    totalprice =
                                                                        totalprice -
                                                                            orgPrice;

                                                                    item.deleteTopicItem(
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
                                _cardProvider.topicPrice = 0;
                                totalprice = 0;
                              });
                            }

                            _cardProvider.topicCardItem.forEach((element) {
                              element.selected = value;

                              if (_checkAll == true) {
                                _cardProvider.topicPrice =
                                    _cardProvider.topicPrice + element.price
                                        as int;
                                print(
                                    ' _cardProvider.price: ${_cardProvider.topicPrice}');
                                setState(() {
                                  totalprice = _cardProvider.totalTopicPrice();
                                });
                              } else if (_checkAll == false) {
                                setState(() {
                                  _cardProvider.topicPrice = 0;
                                  totalprice = 0;
                                  print(
                                      '_cardProvider.topicPrice: ${_cardProvider.topicPrice}');
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
