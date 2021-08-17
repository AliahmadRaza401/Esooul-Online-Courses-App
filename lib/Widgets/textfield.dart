import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldSetter onChange;
  final String label;
  final FormFieldValidator<String> formvalidator;
  final TextInputType textInputtype;
  final bool isSecure;
  // Widget suffix;
  // final FocusNode node;
  // final Function focus;
  TextFormFieldWidget({
    required this.controller,
    required this.onChange,
    required this.label,
    required this.formvalidator,
    //required this.node,
    this.isSecure = false,
    //required this.suffix,
    required this.textInputtype,
    //required this.focus
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.060,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 4,
                  blurRadius: 15)
            ]),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: TextFormField(
            style: TextStyle(fontSize: 14, color: Colors.black),
            obscureText: isSecure,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: label, labelStyle: TextStyle(color: Colors.black54),

              // suffix: suffix == null ? SizedBox() : suffix,
              hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w100),
            ),

            validator: formvalidator,
            onChanged: onChange,
            // focusNode: node,
            controller: controller,
            //  onFieldSubmitted: focus,
          ),
        ),
      ),
    );
  }
}

class TextFieldOTP extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldSetter onChange;
  final String label;
  final FormFieldValidator<String> validator;
  final TextInputType textInputtype;
  final bool isSecure;
  //final Widget suffix;
  //final FocusNode node;
  //final Function focus;
  TextFieldOTP({
    required this.controller,
    required this.onChange,
    required this.label,
    required this.validator,
    // required this.node,
    this.isSecure = false,
    //  required this.suffix,
    required this.textInputtype,
    //required this.focus
  });
  //const textFieldOTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.16,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 4,
                  blurRadius: 15)
            ]),
        child: TextFormField(
          style: TextStyle(fontSize: 18, color: Colors.black),
          textAlign: TextAlign.center,
          obscureText: isSecure,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label, labelStyle: TextStyle(color: Colors.black54),
            // suffix: suffix == null ? SizedBox() : suffix,
            hintStyle: TextStyle(
                color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.w100),
          ),

          validator: validator,
          onChanged: onChange,
          // focusNode: node,
          controller: controller,
          // onFieldSubmitted: focus,
          keyboardType: TextInputType.number,
          maxLength: 1,
        ),
      ),
    );
  }
}
