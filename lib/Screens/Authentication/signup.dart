import 'package:esooul/Widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String password = "";
  String confirmpassword = "";
  String error = "";

  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/png/Frame.png"),
                Text(
                  "Good to see you",
                  style: TextStyle(fontSize: 18.0),
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
                        height: MediaQuery.of(context).size.height * .87,
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
                        height: MediaQuery.of(context).size.height * .87,
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
                                "Create New Account",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              TextFormFieldWidget(
                                label: 'Name',
                                controller: _nameController,
                                //node: emailNode,
                                formvalidator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter your name';
                                  }
                                },
                                onChange: (value) {
                                  setState(() => name = value);
                                },

                                textInputtype: TextInputType.name,
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
                              TextFormFieldWidget(
                                label: 'Password',
                                controller: _confirmpasswordController,
                                //node: emailNode,
                                formvalidator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password is too short';
                                  } else if (value != password) {
                                    return "Password not match";
                                  }
                                },
                                onChange: (value) {
                                  setState(() => confirmpassword = value);
                                },
                                isSecure: true,
                                textInputtype: TextInputType.visiblePassword,
                              ),

                              Text("Already Have an account?"),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
