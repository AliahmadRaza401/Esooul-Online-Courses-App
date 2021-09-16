import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

Widget inputField(BuildContext context, title,icon ,controller,MultiValidator validation) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: TextFormField(
      controller: controller,
      // onChanged: (value) {
      //   setState(() {
      //     password = value;
      //   });
      // },
      validator:validation,
      cursorColor: Color(0xFF02B1D7),
      cursorWidth: 2.0,
      cursorHeight: 26.0,
      style: TextStyle(
        color: Color(0xFF02B1D7),
      ),
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        hintText: title,
        hintStyle: TextStyle(
          color: Color(0xFF02B1D7),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 1),
          child: Icon(
            icon,
            color: Color(0xFF02B1D7),
          ),
        ),
        // enabledBorder: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //   borderSide: const BorderSide(
        //     color: Colors.grey,
        //   ),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(70.0)),
          borderSide: BorderSide(color: Color(0xFF02B1D7), width: 2),
        ),
      ),
    ),
  );
}



