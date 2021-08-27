import 'package:flutter/material.dart';

Widget noDataMsg(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.5,
    child: Text(
      "Oops! No Data",
      style: TextStyle(color: Colors.black),
    ),
  );
}
