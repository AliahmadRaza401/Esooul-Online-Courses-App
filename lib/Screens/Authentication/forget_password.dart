import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/Widgets/varaibles/globel_varailbles.dart';
import 'package:esooul/Widgets/varaibles/mainActionButton.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();

  String email = "";

  String error = "";

  // late FocusNode emailNode;
  // late FocusNode passwordNode;

  final _emailController = TextEditingController();

  @override
  // void initState() {
  //   emailNode = FocusNode();
  //   passwordNode = FocusNode();
  //   super.initState();
  // }

  // void dispose() {
  //   emailNode.dispose();
  //   passwordNode.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                // color: Color(0xff5098C8),
                gradient: RadialGradient(
              center: Alignment(0, -0.6),
              radius: 1.2,
              colors: [Colors.white, Color(0xFFE6E6E6), Color(0xFFAAAAAA)],
            )),
            // margin: EdgeInsets.only(
            //   top: MediaQuery.of(context).size.height * .090,
            //   left: MediaQuery.of(context).size.width * .01,
            //   right: MediaQuery.of(context).size.width * .01,
            // ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.093,
                ),
                Image.asset("assets/png/esoullogoauth.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060,
                ),
                Text(
                  "Don't worry! it's all under control",
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
                  height: MediaQuery.of(context).size.height * .715,
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        Text(
                          "Forget Password",
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff5A5A5A)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.060,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: TextFormFieldWidget(
                            label: 'Email',
                            controller: _emailController,
                            //node: emailNode,
                            formvalidator: emailValidator,
                            onChange: (value) {
                              setState(() => email = value);
                            },

                            textInputtype: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: mainActionButton(
                            context,
                            Text("Recover"),
                            () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpVerifivation(
                                            uniqueID: null,
                                          )),
                                );
                              }
                            },
                          ),
                          // SwipingButton(
                          //   text: "to recover",
                          //   containerText: "to Recover",
                          //   onSwipeCallback: () {
                          //     if (_formKey.currentState!.validate()) {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => OtpVerifivation(
                          //                   uniqueID: null,
                          //                 )),
                          //       );
                          //     }
                          //   },
                          //   height: 80,
                          // ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                "Copyright Reserved@Esooul",
                                style: TextStyle(
                                  color: Color(0xff5A5A5A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SliderButton(
                        //   action: () {
                        //     ///Do something here
                        //     Navigator.of(context).pop();
                        //   },
                        //   label: Text(
                        //     "Slide to cancel Event",
                        //     style: TextStyle(
                        //         color: Color(0xff4a4a4a),
                        //         fontWeight: FontWeight.w500,
                        //         fontSize: 17),
                        //   ),

                        //   icon: Text(
                        //     "x",
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 44,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
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
