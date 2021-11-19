import 'package:esooul/Screens/Authentication/forget_password.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';

import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Country%20Home/country_Navbar.dart';
import 'package:esooul/Screens/Home/home.dart';

import 'package:esooul/Widgets/check_internet.dart';
import 'package:esooul/Widgets/loading_button.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';

import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/Widgets/varaibles/globel_varailbles.dart';
import 'package:esooul/Widgets/varaibles/mainActionButton.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';
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
  bool _isObscure = true;
  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  late LoginProvider _loginProvider;
  late SignUpProvider _signUpProvider;
  var result;
  var uniqueID;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    CheckInternet().checkConnection(context);
    _loginProvider = Provider.of<LoginProvider>(context, listen: false);
    _signUpProvider = Provider.of<SignUpProvider>(context, listen: false);
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

  expHandler() async {
    if (result['status'] == 200) {
      print("responce Success");
      if (result['message'] == "Success.") {
        _loginProvider.userUniqueIdSave(result['data']['uniqueId']);
        _loginProvider.userEmailSave(result['data']['email']);
        // SharedPreferences prefs = await SharedPreferences.getInstance();
        // prefs.setString('token', result['message']['token']);
        // _signUpProvider.token = result['message']['token'];
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => CountryNavBar()));
        setState(() {
          _loading = false;
        });
        // uniqueID = result['data']['uniqueId'];
        // alertDialog(context, result['message'],
        //     "Your account is not validate, Click Continue to Validate your account");
      } else if (result['message']['token'] != null) {
        print("user Authenticate");
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('loginUser', true);
        print("User  Login  True");
        addTokenToSF();
        // _loginProvider.userFName(result['data']['first_name']);

        setState(() {
          _loading = false;
        });
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CountryNavBar()));
      } else {
        alertDialog(context, "Login UnSuccessfull",
            "Please check your Email and make sure its Authenticate");
      }
    } else {
      print("Not Found");
      alertDialog(context, "Login Fail!",
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
        child: SingleChildScrollView(
          child: Container(
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
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.073,
                  ),
                  Image.asset("assets/png/esoullogoauth.png"),
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
                    height: MediaQuery.of(context).size.height * .78,
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
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.width * .08),
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.width * .08),
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
                            style: TextStyle(
                                fontSize: 18.0, color: Color(0xff5A5A5A)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.030,
                          ),
                          emailField(),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          //   child: TextFormFieldWidget(
                          //     label: 'Email',
                          //     controller: _emailController,
                          //     //node: emailNode,
                          //     formvalidator: emailValidator,
                          //     // formvalidator: (value) {
                          //     //   if (value == null || value.isEmpty) {
                          //     //     return 'Email is empty';
                          //     //   }
                          //     // },
                          //     onChange: (value) {
                          //       setState(() => email = value);
                          //     },

                          //     textInputtype: TextInputType.emailAddress,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height * 0.020,
                          // ),
                          // passwordField(),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          //   child: PasswordTextField(
                          //     label: 'Password',
                          //     controller: _passwordController,
                          //     //node: emailNode,
                          //     formvalidator: (value) {
                          //       if (value == null ||
                          //           value.isEmpty ||
                          //           value.length < 6) {
                          //         return 'Password is too short';
                          //       }
                          //     },
                          //     onChange: (value) {
                          //       setState(() => password = value);
                          //     },
                          //     obscuretext: true,
                          //     textInputtype: TextInputType.visiblePassword,
                          //   ),
                          // ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()),
                                );
                              },
                              child: Text(
                                "Forget Passsword?",
                                style: TextStyle(
                                  color: Color(0xff5A5A5A),
                                ),
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.010,
                          ),
                          mainActionButton(
                              context,
                              _loading == false
                                  ? Text("SignIn")
                                  : CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                              signIn),
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
                          LoadingButton(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.010,
                          ),
                          // Expanded(
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(bottom: 10.0),
                          //     child: Align(
                          //       alignment: Alignment.bottomCenter,
                          //       child: Text(
                          //         "Copyright Reserved@Esooul",
                          //         style: TextStyle(
                          //           color: Color(0xff5A5A5A),
                          //         ),
                          //       ),
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
      ),
    );
  }

  Widget emailField() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        controller: _emailController,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        validator: MultiValidator([
          EmailValidator(errorText: "enter a valid email address"),
          RequiredValidator(errorText: "Required")
        ]),
        cursorColor: Color(0xFF02B1D7),
        cursorWidth: 2.0,
        cursorHeight: 26.0,
        style: TextStyle(
          color: Color(0xFF02B1D7),
        ),
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          hintText: "Email",
          hintStyle: TextStyle(
            color: Color(0xFF02B1D7),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 1),
            child: Icon(
              Icons.email,
              color: Color(0xFF02B1D7),
            ),
          ),
          // enabledBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //   borderSide: const BorderSide(
          //     color: Colors.grey,
          //   ),
          // ),
          enabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(70.0)),
            borderSide: BorderSide(color: Color(0xFF02B1D7), width: 2),
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        controller: _passwordController,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        validator: MultiValidator([RequiredValidator(errorText: "Required")]),
        cursorColor: Color(0xFF02B1D7),
        obscureText: _isObscure,
        cursorWidth: 2.0,
        cursorHeight: 26.0,
        style: TextStyle(
          color: Color(0xFF02B1D7),
        ),
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Color(0xFF02B1D7),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 1),
            child: Icon(
              Icons.lock,
              color: Color(0xFF02B1D7),
            ),
          ),
          suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          // enabledBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //   borderSide: const BorderSide(
          //     color: Colors.grey,
          //   ),
          // ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(70.0)),
            borderSide: BorderSide(color: Color(0xFF02B1D7), width: 2),
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
