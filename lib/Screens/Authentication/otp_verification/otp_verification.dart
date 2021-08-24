import 'dart:async';

import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifivation extends StatefulWidget {
  // OtpVerifivation({Key? key}) : super(key: key);

  OtpVerifivation({@required this.uniqueID});

  var uniqueID;

  @override
  _OtpVerifivationState createState() => _OtpVerifivationState();
}

class _OtpVerifivationState extends State<OtpVerifivation> {
  TextEditingController textEditingController = TextEditingController();

  late StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  var error;
  bool loading = false;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  tokenConfirm() {
    print(currentText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .1,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
            ),
            child: Column(
              children: [
                Image.asset("assets/png/elogo.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060,
                ),
                Text(
                  "Don't worry! we're here for rescue",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .0080,
                          left: MediaQuery.of(context).size.width * .017,
                          right: MediaQuery.of(context).size.width * .017,
                        ),
                        height: MediaQuery.of(context).size.height * .73,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff00B0D7),
                                Colors.white,
                              ],
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    MediaQuery.of(context).size.width * .08),
                                topRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .08))),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .01,
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                        ),
                        height: MediaQuery.of(context).size.height * .73,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/png/loginbg.png'),
                                fit: BoxFit.cover),
                            color: Color(0xff404040),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    MediaQuery.of(context).size.width * .07),
                                topRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .07))),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.040,
                            ),
                            Text(
                              "Enter Code",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.060,
                            ),
                            otpField(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                hasError
                                    ? "*Please fill up all the cells properly"
                                    : "",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              height: 60,
                              margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: FlatButton(
                                child: loading == true
                                    ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Confirm",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                onPressed: () {
                                  formKey.currentState!.validate();
                                  // conditions for validating
                                  if (currentText.length != 6) {
                                    errorController.add(ErrorAnimationType
                                        .shake); // Triggering error shake animation
                                    setState(() {
                                      hasError = true;
                                    });
                                  } else {
                                    setState(
                                      () {
                                        hasError = false;
                                      },
                                    );
                                    tokenConfirm();
                                  }
                                },
                                color: Color(0xffFF5018),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Didn't receive the code? ",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 15),
                                ),
                                TextButton(
                                    onPressed: () => snackBar("OTP resend!!"),
                                    child: Text(
                                      "RESEND",
                                      style: TextStyle(
                                          color: Color(0xffff5018),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ))
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text("Copyright Reserved@Esooul"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // snackBar Widget
  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget otpField() {
    return Form(
      key: formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              color: Color(0xff00B0D7),
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            // obscureText: true,
            obscuringCharacter: '*',
            // obscuringWidget: FlutterLogo(
            //   size: 24,
            // ),
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 5) {
                return "I'm from validator";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: hasError ? Colors.blue.shade100 : Colors.black,
            ),
            cursorColor: Color(0xff00B0D7),
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            errorAnimationController: errorController,
            controller: textEditingController,
            keyboardType: TextInputType.number,
            boxShadows: [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              print("Completed");
            },
            // onTap: () {
            //   print("Pressed");
            // },
            onChanged: (value) {
              print(value);
              setState(() {
                currentText = value;
                print(currentText);
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          )),
    );
  }
}
