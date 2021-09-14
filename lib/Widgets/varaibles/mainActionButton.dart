import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget mainActionButton(BuildContext context, title, Function callback) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(.5),
          blurRadius: 5,
          spreadRadius: 2,
          offset: Offset(1, 1))
    ]),
    child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,

          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .3,
              right: MediaQuery.of(context).size.width * .3,
              top: MediaQuery.of(context).size.height * .015,
              bottom: MediaQuery.of(context).size.height * .015),
          primary: Color(0xff00B0D7),
          // side: BorderSide(width: 1, color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: title),
  );
}

Widget mainActionButtonOutline(BuildContext context, title, Function callback) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(.5),
          blurRadius: 5,
          spreadRadius: 2,
          offset: Offset(1, 1))
    ]),
    child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .3,
              right: MediaQuery.of(context).size.width * .3,
              top: MediaQuery.of(context).size.height * .015,
              bottom: MediaQuery.of(context).size.height * .015),
          primary: Colors.white,
          side: BorderSide(width: 2, color: Color(0xff00B0D7)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: title),
  );
}
