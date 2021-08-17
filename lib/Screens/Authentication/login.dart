import 'package:esooul/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "";
  String error = "";
  String password = "";
  Color _containerColor = Colors.blue;

  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .15,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
              bottom: MediaQuery.of(context).size.height * 0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Hello",
                  style: TextStyle(fontSize: 18.0),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .0080,
                          left: MediaQuery.of(context).size.width * .017,
                          right: MediaQuery.of(context).size.width * .017,
                          bottom: MediaQuery.of(context).size.height * 0.0),
                      height: MediaQuery.of(context).size.height * .78,
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
                          bottom: MediaQuery.of(context).size.height * 0.0),
                      height: MediaQuery.of(context).size.height * .78,
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
                            Text(
                              "Login to your account",
                              style: TextStyle(fontSize: 18.0),
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
                            TextFormFieldWidget(
                              label: 'Password',
                              controller: _passwordController,
                              //node: emailNode,
                              formvalidator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length < 6) {
                                  return 'Password is too short';
                                }
                              },
                              onChange: (value) {
                                setState(() => password = value);
                              },
                              isSecure: true,
                              textInputtype: TextInputType.visiblePassword,
                            ),
                            GestureDetector(child: Text("Forget Passsword?")),
                            Text("Or"),
                            Text("Don't Have an account?"),

                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Copyright Reserved@Esooul"),
                            )

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
