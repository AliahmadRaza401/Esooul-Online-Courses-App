import 'package:esooul/Screens/Authentication/forget_password.dart';
import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/Widgets/varaibles/globel_varailbles.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String fname = "";
  String lname = "";
  String email = "";
  String password = "";
  String confirmpassword = "";
  bool _obscureText = true;
  String error = "";

  late SignUpProvider _signUpProvider;
  var result;
  bool _loading = false;
  var uniqueID;

  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // configLoading();
    _signUpProvider = Provider.of<SignUpProvider>(context, listen: false);
  }

  signUp() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
      });
      result = await _signUpProvider.signUp(
          fName: _firstnameController.text.toString(),
          lName: _lastnameController.text.toString(),
          email: _emailController.text.toString(),
          password: _passwordController.text.toString());

      print('result: ${result}');
      expHandler();
    }
  }

  expHandler() {
    print("Error Result ${result['errors']}");
    if (result['message'] == "Success.") {
      print("SignUp True");
      uniqueID = result['data']['uniqueId'];
      print('uniqueId: $uniqueID');
      alertDialog(context, "SignUp Successfully!",
          "Click Continue to verify the OTP which send on your given Email");
    } else if (result['message'] != "Success.") {
      print("SignUp false");
      alertDialog(context, result['message'].toString(),
          "Please Enter Correct data to Continue");
    } else {
      alertDialog(context, "SignUp Fail",
          "Please check your Network connection or try again");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        //   top: MediaQuery.of(context).size.height * .09,
        //   left: MediaQuery.of(context).size.width * .01,
        //   right: MediaQuery.of(context).size.width * .01,
        // ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.085,
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
              height: MediaQuery.of(context).size.height * .765,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xffBBE0E8),
                      Color(0xFF02B1D7)
                    ]),
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
                      "Create New Account",
                      style:
                          TextStyle(color: Color(0xff5A5A5A), fontSize: 18.0),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    TextFormFieldWidget(
                      label: 'Name',
                      controller: _firstnameController,
                      //node: emailNode,
                      formvalidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                      },
                      onChange: (value) {
                        setState(() => fname = value);
                      },

                      textInputtype: TextInputType.name,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    TextFormFieldWidget(
                      label: 'Last Name',
                      controller: _lastnameController,
                      //node: emailNode,
                      formvalidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your last name';
                        }
                      },
                      onChange: (value) {
                        setState(() => lname = value);
                      },

                      textInputtype: TextInputType.name,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    TextFormFieldWidget(
                      label: 'Email',
                      controller: _emailController,
                      //node: emailNode,
                      formvalidator: emailValidator,
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
                      formvalidator: passwordValidator,
                      onChange: (value) {
                        setState(() => password = value);
                      },
                      obscuretext: true,
                      textInputtype: TextInputType.visiblePassword,
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    PasswordTextField(
                      label: 'Confirm Password',
                      controller: _confirmpasswordController,
                      //node: emailNode,
                      obscuretext: true,
                      formvalidator: (val) =>
                          MatchValidator(errorText: "password do not match")
                              .validateMatch(val.toString(), password),
                      // formvalidator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Password is too short';
                      //   } else if (value != password) {
                      //     return "Password not match";
                      //   }
                      // },
                      onChange: (value) {
                        setState(() => confirmpassword = value);
                      },
                      isSecure: true,
                      textInputtype: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    ElevatedButton(
                      child: _loading == false
                          ? Text('Sign Up')
                          : CircularProgressIndicator(
                              color: Colors.white,
                            ),
                      onPressed: signUp,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Text(
                      "Already Have an account?",
                      style: TextStyle(
                        color: Color(0xff5A5A5A),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    ElevatedButton(
                      child: Text('Sign in'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogIn()),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: Text('forget'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()),
                        );
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
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
