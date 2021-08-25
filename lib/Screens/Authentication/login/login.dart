import 'package:esooul/Screens/Authentication/forget_password.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';
import 'package:esooul/Screens/Authentication/signUp/signup.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Widgets/check_internet/check_internet.dart';
import 'package:esooul/Widgets/loading_button.dart';
import 'package:esooul/Widgets/my_slide_button.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/api/api.dart';
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
  Color _containerColor = Colors.blue;

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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .09,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
              bottom: MediaQuery.of(context).size.height * 0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/png/elogo.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
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
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),
                            Text(
                              "Login to your account",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.040,
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
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
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
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),
                            GestureDetector(child: Text("Forget Passsword?")),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
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
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),
                            Text("Or"),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),

                            Text("Don't Have an account?"),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
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
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),

                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Copyright Reserved@Esooul"),
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
              ],
            ),
          ),
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
