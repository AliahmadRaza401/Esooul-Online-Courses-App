import 'dart:async';

import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification_provider.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool _loading = false;
  final formKey = GlobalKey<FormState>();
  late OtpVerificationProvider _otpVerificationProvider;
  late SignUpProvider _signUpProvider;
  var result;

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    _otpVerificationProvider =
        Provider.of<OtpVerificationProvider>(context, listen: false);
    _signUpProvider = Provider.of<SignUpProvider>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  Future tokenConfirm() async {
    _loading = true;
    print(currentText);
    result = await _otpVerificationProvider.otpVerification(
        otp: currentText, uniqueID: widget.uniqueID);
    print('result: $result');
    expHandler();
  }

  expHandler() {
    if (result['status'] == 200) {
      print("user Authenticate");
      setState(() {
        _loading = false;
      });
      addTokenToSF();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BottomNavBar()));
    } else {
      alertDialog(context, result['message'],
          "Please check your verification Code Or click on Resend");
    }
  }

  addTokenToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', result['message']['token']);
  }

  resendOTP() async {
    snackBar("OTP resend!!");
    var resendResult = await _otpVerificationProvider.resendOTP(
        email: _signUpProvider.userEmail);
    print('resendResult: $resendResult');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // color: Color(0xff5098C8),
            gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1,
          colors: [Colors.white, Color(0xFFE6E6E6), Color(0xFFAAAAAA)],
        )),

        // margin: EdgeInsets.only(
        //   top: MediaQuery.of(context).size.height * .1,
        //   left: MediaQuery.of(context).size.width * .01,
        //   right: MediaQuery.of(context).size.width * .01,
        // ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.111,
            ),
            Image.asset("assets/png/elogo.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            Text(
              "Don't worry! it's all under control.",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff5A5A5A)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .01,
                left: MediaQuery.of(context).size.width * .02,
                right: MediaQuery.of(context).size.width * .02,
              ),
              height: MediaQuery.of(context).size.height * .719,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xffBBE0E8),
                        Color(0xFF02B1D7)
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08))),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Text(
                    "Enter 4-digit code to verify",
                    style: TextStyle(fontSize: 18.0, color: Color(0xff5A5A5A)),
                  ),
                  Text(
                    "your credentials",
                    style: TextStyle(fontSize: 18.0, color: Color(0xff5A5A5A)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.060,
                  ),
                  otpField(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      hasError ? "*Please fill up all the cells properly" : "",
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
                      child: _loading == true
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
                        if (currentText.length != 4) {
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
                      color: Color(0xff5098C8),
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
                        "Didn't receive yet?",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
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
    Theme.of(context).textTheme.apply(
          bodyColor: Colors.pink,
          displayColor: Colors.pink,
        );
    return Form(
      key: formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            obscureText: true,
            obscuringCharacter: '*',
            // obscuringWidget: FlutterLogo(
            //   size: 24,
            // ),
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 4) {
                return "Enter pin code";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(40),
              fieldHeight: 50,
              fieldWidth: 60,
              activeFillColor: hasError ? Colors.white : Color(0xff5098C8),
            ),
            cursorColor: Colors.white,
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

  alertDialog(BuildContext context, String title, String subTitle) {
    setState(() {
      _loading = false;
    });
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Okay"),
      onPressed: () {
        Navigator.pop(context);
        // Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> UserLogin()));
      },
    );
    // Widget continueButton = FlatButton(
    //   child: Text("Continue"),
    //   onPressed: result['message'] != "Success."
    //       ? null
    //       : () {
    //           Navigator.of(context).pushReplacement(new MaterialPageRoute(
    //               builder: (context) => OtpVerifivation(uniqueID: uniqueID)));
    //         },
    // );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(
        subTitle,
        // style: TextStyle(fontSize: 18,fontFamily: Variable.fontStyle),
      ),
      actions: [
        cancelButton,
        // continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
