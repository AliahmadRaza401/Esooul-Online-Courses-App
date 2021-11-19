import 'package:esooul/Screens/Authentication/forget_password.dart';
import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_widget.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Country%20Home/country_Navbar.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Widgets/swipe_button/swipebuttonflutter.dart';
import 'package:esooul/Widgets/textfield.dart';
import 'package:esooul/Widgets/varaibles/globel_varailbles.dart';
import 'package:esooul/Widgets/varaibles/mainActionButton.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool _isObscurePassord = true;
  bool _isObscureConfPassord = true;

  // late FocusNode emailNode;
  // late FocusNode passwordNode;
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  late LoginProvider _loginProvider;
  @override
  void initState() {
    super.initState();
    // configLoading();
    _signUpProvider = Provider.of<SignUpProvider>(context, listen: false);
    _loginProvider = Provider.of<LoginProvider>(context, listen: false);
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

  expHandler() async {
    print("Error Result ${result['errors']}");
    if (result['status'] == 200) {
      print("SignUp True");
      print(result['Token']);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', result['message']['token']);
      _signUpProvider.token = result['message']['token'];
      _loginProvider.userEmailSave(result['data']['email']);
      // setState(() {
      // });
      print("Token: ${result['message']['token']}");
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => CountryNavBar()));
      // uniqueID = result['data']['uniqueId'];
      // print('uniqueId: $uniqueID');
      // alertDialog(context, "SignUp Successfully!",
      //     "Click Continue to verify the OTP which send on your given Email");
    } else if (result['message'] != "Success.") {
      if (result['errors'] != null) {
        alertDialog(context, result['errors']['email'][0].toString(),
            "Please try another Email");
        print("email has already been taken.");
      } else {
        alertDialog(context, result['message'].toString(),
            "Please Enter Correct data to Continue");
      }
    } else {
      alertDialog(context, "SignUp Fail",
          "Please check your Network connection or try again");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
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
          //   top: MediaQuery.of(context).size.height * .09,
          //   left: MediaQuery.of(context).size.width * .01,
          //   right: MediaQuery.of(context).size.width * .01,
          // ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.068,
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
                padding: EdgeInsets.only(bottom: 8.0),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01,
                    left: MediaQuery.of(context).size.width * .02,
                    right: MediaQuery.of(context).size.width * .02,
                    bottom: MediaQuery.of(context).size.height * 0.0),
                height: MediaQuery.of(context).size.height * .78,
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
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * .08),
                    topRight: Radius.circular(
                        MediaQuery.of(context).size.width * .08),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      // shrinkWrap: true,
                      // physics: ClampingScrollPhysics(),
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Center(
                          child: Text(
                            "Create New Account",
                            style: TextStyle(
                                color: Color(0xff5A5A5A), fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        //   child: TextFormFieldWidget(
                        //     label: 'First Name',
                        //     controller: _firstnameController,
                        //     //node: emailNode,
                        //     formvalidator: (value) {
                        //       if (value == null || value.isEmpty) {
                        //         return 'Enter your name';
                        //       } else if (value.length < 3) {
                        //         return "name must be at least 3 characters";
                        //       }
                        //     },
                        //     onChange: (value) {
                        //       setState(() => fname = value);
                        //     },

                        //     textInputtype: TextInputType.name,
                        //   ),
                        // ),
                        // inputField(
                        //     context,
                        //     "First Name",
                        //     Icons.person,
                        //     _firstnameController,
                        //     MultiValidator(
                        //         [RequiredValidator(errorText: "Required")])),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.020,
                        // ),
                        // inputField(
                        //     context,
                        //     "Last Name",
                        //     Icons.person,
                        //     _lastnameController,
                        //     MultiValidator(
                        //         [RequiredValidator(errorText: "Required")])),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        //   child: TextFormFieldWidget(
                        //     label: 'Last Name',
                        //     controller: _lastnameController,
                        //     //node: emailNode,
                        //     formvalidator: (value) {
                        //       if (value == null || value.isEmpty) {
                        //         return 'Enter your name';
                        //       } else if (value.length < 3) {
                        //         return "name must be at least 3 characters";
                        //       }
                        //     },
                        //     onChange: (value) {
                        //       setState(() => lname = value);
                        //     },

                        //     textInputtype: TextInputType.name,
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        emailField(),
                        // inputField(
                        //     context,
                        //     "Email",
                        //     Icons.person,
                        //     _emailController,
                        //     MultiValidator([
                        //       EmailValidator(errorText: "Enter valid Email"),
                        //       RequiredValidator(errorText: "Required")
                        //     ])),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        //   child: TextFormFieldWidget(
                        //     label: 'Email',
                        //     controller: _emailController,
                        //     //node: emailNode,
                        //     formvalidator: emailValidator,
                        //     onChange: (value) {
                        //       setState(() => email = value);
                        //     },

                        //     textInputtype: TextInputType.emailAddress,
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        // passwordInputField(
                        //     context,
                        //     "Password",
                        //     Icons.lock,
                        //     _passwordController,
                        //     MultiValidator([
                        //       RequiredValidator(errorText: "Required"),
                        //       MinLengthValidator(6,
                        //           errorText: "Password must be greater then 6")
                        //     ])),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        //   child: PasswordTextField(
                        //     label: 'Password',
                        //     controller: _passwordController,
                        //     //node: emailNode,
                        //     formvalidator: passwordValidator,
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
                        // matchInputField(
                        //     context,
                        //     "Confirm Password",
                        //     Icons.lock,
                        //     _confirmpasswordController,
                        //     _passwordController.text),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        //   child: PasswordTextField(
                        //     label: 'Confirm Password',
                        //     controller: _confirmpasswordController,
                        //     //node: emailNode,
                        //     obscuretext: true,
                        //     formvalidator: (val) => MatchValidator(
                        //             errorText: "password do not match")
                        //         .validateMatch(val.toString(), password),
                        //     // formvalidator: (value) {
                        //     //   if (value == null || value.isEmpty) {
                        //     //     return 'Password is too short';
                        //     //   } else if (value != password) {
                        //     //     return "Password not match";
                        //     //   }
                        //     // },
                        //     onChange: (value) {
                        //       setState(() => confirmpassword = value);
                        //     },
                        //     isSecure: true,
                        //     textInputtype: TextInputType.visiblePassword,
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        // _loading == false
                        //     ? SwipingButton(
                        //         text: "Create Account",
                        //         containerText: "to create",
                        //         onSwipeCallback: signUp,
                        //         height: 80,
                        //       )
                        //     : Container(
                        //         margin: EdgeInsets.symmetric(
                        //             horizontal:
                        //                 MediaQuery.of(context).size.width *
                        //                     0.41),
                        //         width: 35,
                        //         child: CircularProgressIndicator()),
                        mainActionButton(
                            context,
                            _loading == false
                                ? Text("SignUp")
                                : CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                            signUp),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),

                        Center(
                          child: Text(
                            "Already Have an account?",
                            style: TextStyle(
                              color: Color(0xff5A5A5A),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),

                        mainActionButtonOutline(
                            context,
                            Text(
                              "LogIn",
                              style: TextStyle(color: Colors.blue),
                            ), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogIn()),
                          );
                        }),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.045),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Copyright Reserved@Esooul",
                              style: TextStyle(
                                color: Color(0xff5A5A5A),
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
              ),
            ],
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

  Widget passwordInputField(BuildContext context, title, icon, controller,
      MultiValidator validation) {
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
        controller: controller,
        // onChanged: (value) {
        //   setState(() {
        //     password = value;
        //   });
        // },
        validator: validation,
        cursorColor: Color(0xFF02B1D7),
        cursorWidth: 2.0,
        cursorHeight: 26.0,
        style: TextStyle(
          color: Color(0xFF02B1D7),
        ),
        obscureText: _isObscurePassord,

        decoration: new InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          hintText: title,
          hintStyle: TextStyle(
            color: Color(0xFF02B1D7),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 1),
            child: Icon(
              icon,
              color: Color(0xFF02B1D7),
            ),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscurePassord ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscurePassord = !_isObscurePassord;
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

  // Widget matchInputField(
  //     BuildContext context, title, icon, controller, password) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width * 0.9,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(70),
  //       color: Colors.white,
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.5),
  //           spreadRadius: 3,
  //           blurRadius: 7,
  //           offset: Offset(0, 3), // changes position of shadow
  //         ),
  //       ],
  //     ),
  //     child: TextFormField(
  //       controller: controller,
  //       obscureText: _isObscureConfPassord,
  //       // onChanged: (value) {
  //       //   setState(() {
  //       //     password = value;
  //       //   });
  //       // },
  //       validator: (val) {
  //         if (val == null || val.isEmpty) {
  //           return "Required";
  //         } else {
  //           MatchValidator(errorText: 'passwords do not match')
  //               .validateMatch(val, password);
  //         }
  //       },
  //       cursorColor: Color(0xFF02B1D7),
  //       cursorWidth: 2.0,
  //       cursorHeight: 26.0,

  //       style: TextStyle(
  //         color: Color(0xFF02B1D7),
  //       ),
  //       decoration: new InputDecoration(
  //         contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
  //         hintText: title,
  //         hintStyle: TextStyle(
  //           color: Color(0xFF02B1D7),
  //         ),
  //         prefixIcon: Padding(
  //           padding: EdgeInsets.only(left: 1),
  //           child: Icon(
  //             icon,
  //             color: Color(0xFF02B1D7),
  //           ),
  //         ),
  //         suffixIcon: IconButton(
  //             icon: Icon(_isObscureConfPassord
  //                 ? Icons.visibility
  //                 : Icons.visibility_off),
  //             onPressed: () {
  //               setState(() {
  //                 _isObscureConfPassord = !_isObscureConfPassord;
  //               });
  //             }),
  //         // enabledBorder: const OutlineInputBorder(
  //         //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //         //   borderSide: const BorderSide(
  //         //     color: Colors.grey,
  //         //   ),
  //         // ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(70.0)),
  //           borderSide: BorderSide(color: Color(0xFF02B1D7), width: 2),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  alertDialog(BuildContext context, String title, String subTitle) {
    setState(() {
      _loading = false;
    });
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Ok"),
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
