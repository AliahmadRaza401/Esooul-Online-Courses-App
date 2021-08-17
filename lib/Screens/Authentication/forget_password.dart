import 'package:esooul/Widgets/textfield.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .15,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
            ),
            child: Column(
              children: [
                Image.asset("assets/png/Frame.png"),
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
                        height: MediaQuery.of(context).size.height * .68,
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
                        height: MediaQuery.of(context).size.height * .68,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                              ),
                              Text(
                                "Forget Password",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.060,
                              ),
                              TextFormFieldWidget(
                                label: 'Email',
                                controller: _emailController,
                                //node: emailNode,
                                formvalidator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email is empty';
                                  }
                                },
                                onChange: (value) {
                                  setState(() => email = value);
                                },

                                textInputtype: TextInputType.emailAddress,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
