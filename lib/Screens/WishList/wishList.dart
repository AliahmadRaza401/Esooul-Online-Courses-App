import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(),
              Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .0,
                    left: MediaQuery.of(context).size.width * .01,
                    right: MediaQuery.of(context).size.width * .01,
                  ),
                  height: MediaQuery.of(context).size.height * .9,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BackButtonWidget(iconPath: "assets/png/hearticon.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        _courseContainer(
                            "assets/png/candageography.png",
                            "Issues in Canadian Geography",
                            "Ponam Ghazanfar",
                            "Category - History",
                            "1000",
                            "1500"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        _courseContainer(
                            "assets/png/candageography.png",
                            "Issues in Canadian Geography",
                            "Ponam Ghazanfar",
                            "Category - History",
                            "1000",
                            "1500"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _courseContainer(String imgPath, String subject, String author,
      String category, String discountPrice, String price) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: MediaQuery.of(context).size.height * 0.17,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff3D3D3D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        child: Column(
          children: [
            //1st Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      imgPath,
                      height: MediaQuery.of(context).size.height * 0.090,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(subject),
                    Text(
                      author,
                      style: TextStyle(color: Color(0xffFFD643)),
                    ),
                    Row(
                      children: [
                        Text(category),
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
                              children: [
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(150, 10),
                                      primary: Color(0xff646464),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Text("Add to cart")),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.10,
                                ),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(150, 10),
                                      primary: Color(0xff646464),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                    onPressed: () {},
                                    icon: Icon(Icons.close),
                                    label: Text("Remove")),
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
      ),
    );
  }
}
