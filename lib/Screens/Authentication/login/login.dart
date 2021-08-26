import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';

import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
<<<<<<< HEAD
import 'package:esooul/Screens/Home/home.dart';
=======

>>>>>>> 364f5642bfdb3f1378926e56b6185054862c9c8f
import 'package:esooul/Widgets/check_internet.dart';
import 'package:esooul/Widgets/loading_button.dart';

import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/Widgets/varaibles/globel_varailbles.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "";
  String error = "";
  String password = "";

  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  late LoginProvider _loginProvider;
  var result;
  var uniqueID;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    CheckInternet().checkConnection(context);
    _loginProvider = Provider.of<LoginProvider>(context, listen: false);
  }

  @override
  void dispose() {
    CheckInternet().listener.cancel();
    super.dispose();
  }

  signIn() async {
    _loginProvider.getUserFName();
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
      });
      result = await _loginProvider.signIn(
          email: _emailController.text.toString(),
          password: _passwordController.text.toString());
      print('resultLogin: $result');

      expHandler();
    }
  }

  expHandler() {
    if (result['status'] == 200) {
      print("responce Success");
      if (result['message'] == "Success.") {
        print("user Not Authenticate ");
        uniqueID = result['data']['uniqueId'];
        alertDialog(context, result['message'],
            "Your account is not validate, Click Continue to Validate your account");
      } else if (result['message']['token'] != null) {
        print("user Authenticate");
        addTokenToSF();
        _loginProvider.userFName(result['data']['first_name']);
        _loginProvider.userLName(result['data']['last_name']);
        setState(() {
          _loading = false;
        });
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BottomNavBar()));
        _loginProvider.loginTrue();
      } else {
        alertDialog(context, "Login UnSuccessfull",
            "Please check your Email and make sure its Authenticate");
      }
    } else {
      print("Not Found");
      alertDialog(context, result['message'],
          "Something went wrong please check your Email and Password");
    }
  }

  addTokenToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', result['message']['token']);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Color(0xff5098C8),
            gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1,
          colors: [Colors.white, Color(0xFFE6E6E6), Color(0xFFAAAAAA)],
        )),
        // margin: EdgeInsets.only(
        // top: MediaQuery.of(context).size.height * .09,
        // left: MediaQuery.of(context).size.width * .01,
        // right: MediaQuery.of(context).size.width * .01,
        // bottom: MediaQuery.of(context).size.height * 0.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.091,
            ),
            Image.asset("assets/png/elogo.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            Text(
              "Welcome to the future of learning",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff5A5A5A),
                  fontWeight: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01,
                  left: MediaQuery.of(context).size.width * .02,
                  right: MediaQuery.of(context).size.width * .02,
                  bottom: MediaQuery.of(context).size.height * 0.0),
              height: MediaQuery.of(context).size.height * .755,
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

                // image: DecorationImage(
                //     image: AssetImage('assets/png/loginbg.png'),
                //     fit: BoxFit.cover),
                color: Color(0xff5098C8),
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(MediaQuery.of(context).size.width * .08),
                  topRight:
                      Radius.circular(MediaQuery.of(context).size.width * .08),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Text(
                      "Login to your account",
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xff5A5A5A)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    TextFormFieldWidget(
                      label: 'Email',
                      controller: _emailController,
                      //node: emailNode,
                      formvalidator: emailValidator,
                      // formvalidator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Email is empty';
                      //   }
                      // },
                      onChange: (value) {
                        setState(() => email = value);
                      },

                      textInputtype: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    PasswordTextField(
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
                      obscuretext: true,
                      textInputtype: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    GestureDetector(
                        child: Text(
                      "Forget Passsword?",
                      style: TextStyle(
                        color: Color(0xff5A5A5A),
                      ),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    ElevatedButton(
                      child: _loading == true
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text('LogIn'),
                      onPressed: signIn,
                    ),
                    // swipeButton(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: Color(0xff5A5A5A),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),

                    Text(
                      "Don't Have an account?",
                      style: TextStyle(
                        color: Color(0xff5A5A5A),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    // ElevatedButton(
                    //   child: Text('Register'),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => SignUp()),
                    //     );
                    //   },
                    // ),

                    LoadingButton(),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Copyright Reserved@Esooul",
                            style: TextStyle(
                              color: Color(0xff5A5A5A),
                            ),
                          ),
                        ),
                      ),
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
    );
  }

  alertDialog(BuildContext context, String title, String subTitle) {
    setState(() {
      _loading = false;
    });
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
        // Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> UserLogin()));
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed: result['message'] != "Success."
          ? null
          : () {
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (context) => OtpVerifivation(uniqueID: uniqueID)));
            },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(
        subTitle,
        // style: TextStyle(fontSize: 18,fontFamily: Variable.fontStyle),
      ),
      actions: [
        cancelButton,
        continueButton,
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
