import 'package:esooul/Screens/Authentication/login.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:flutter/material.dart';

class EnterPinCode extends StatefulWidget {
  EnterPinCode({Key? key}) : super(key: key);

  @override
  _EnterPinCodeState createState() => _EnterPinCodeState();
}

class _EnterPinCodeState extends State<EnterPinCode> {
  final _formKey = GlobalKey<FormState>();

  late String f1;
  late String f2;
  late String f3;
  late String f4;
  String error = "";
  final _f1controller = TextEditingController();
  final _f2controller = TextEditingController();
  final _f3controller = TextEditingController();
  final _f4controller = TextEditingController();

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
                        child: Form(
                          key: _formKey,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  TextFieldOTP(
                                    label: "".toString(),
                                    controller: _f1controller,
                                    textInputtype: TextInputType.number,
                                    isSecure: true,
                                    onChange: (value) {
                                      setState(
                                        () => f1 = value,
                                      );
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter OTP Received on Email';
                                      }
                                    },
                                  ),
                                  TextFieldOTP(
                                    label: "".toString(),
                                    controller: _f2controller,
                                    textInputtype: TextInputType.number,
                                    isSecure: true,
                                    onChange: (value) {
                                      setState(
                                        () => f2 = value,
                                      );
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter OTP Received on Email';
                                      }
                                    },
                                  ),
                                  TextFieldOTP(
                                    label: "".toString(),
                                    controller: _f3controller,
                                    textInputtype: TextInputType.number,
                                    isSecure: true,
                                    onChange: (value) {
                                      setState(
                                        () => f3 = value,
                                      );
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter OTP Received on Email';
                                      }
                                    },
                                  ),
                                  TextFieldOTP(
                                    label: "".toString(),
                                    controller: _f4controller,
                                    textInputtype: TextInputType.number,
                                    isSecure: true,
                                    onChange: (value) {
                                      setState(
                                        () => f4 = value,
                                      );
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter OTP Received on Email';
                                      }
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                              ),
                              Text("Didn't receive yet?"),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.020,
                              ),
                              ElevatedButton(
                                child: Text('Log IN'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogIn()),
                                  );
                                },
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
}
