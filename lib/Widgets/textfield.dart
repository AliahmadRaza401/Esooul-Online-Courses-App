import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldSetter onChange;
  final String label;
  final FormFieldValidator<String> formvalidator;
  final TextInputType textInputtype;
  final bool isSecure;

  final bool suffixcall;

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
    this.suffixcall = false,
    //required this.focus
  });

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.060,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
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
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 16, color: Color(0xff2575AE)),

          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,

            border: InputBorder.none,
            labelText: widget.label,

            labelStyle: TextStyle(color: Color(0xff2575AE)),

            // suffix: suffix == null ? SizedBox() : suffix,
            hintStyle: TextStyle(
                color: Colors.red, fontSize: 8.0, fontWeight: FontWeight.w100),
          ),

          validator: widget.formvalidator,
          onChanged: widget.onChange,
          // focusNode: node,
          controller: widget.controller,
          //  onFieldSubmitted: focus,
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
    var widget;
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
          obscureText: widget._obscureText,
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

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldSetter onChange;
  final String label;
  final FormFieldValidator<String> formvalidator;
  final TextInputType textInputtype;
  final bool isSecure;
  bool obscuretext;
  final bool suffixcall;
  PasswordTextField({
    required this.controller,
    required this.onChange,
    required this.label,
    required this.formvalidator,

    //required this.node,
    this.isSecure = false,
    this.obscuretext = false,
    //required this.suffix,
    required this.textInputtype,
    this.suffixcall = false,
    //required this.focus
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  void toggle() {
    setState(() {
      widget.obscuretext = !widget.obscuretext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.060,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
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
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 16, color: Color(0xff2575AE)),
          obscureText: widget.obscuretext,

          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,

            border: InputBorder.none,
            labelText: widget.label,

            labelStyle: TextStyle(color: Color(0xff2575AE)),

            // suffix: suffix == null ? SizedBox() : suffix,
            hintStyle: TextStyle(
                color: Colors.red, fontSize: 8.0, fontWeight: FontWeight.w100),

            suffixIcon: IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                widget.obscuretext ? Icons.visibility_off : Icons.visibility,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  widget.obscuretext = !widget.obscuretext;
                });
              },
            ),
          ),

          validator: widget.formvalidator,
          onChanged: widget.onChange,
          // focusNode: node,
          controller: widget.controller,
          //  onFieldSubmitted: focus,
        ),
      ),
    );
  }
}
