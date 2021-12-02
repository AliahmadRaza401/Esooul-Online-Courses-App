import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget tile(BuildContext context, txt,goTo){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => goTo),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.075,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            shape: BoxShape.rectangle),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.035,
                decoration: BoxDecoration(
                  color: Color(0xff00B0D7),
                  borderRadius: BorderRadius.circular(50),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              txt,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  
}