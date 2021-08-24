import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification_provider.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final multiProvider = [
  ChangeNotifierProvider<LoginProvider>(
    create: (_) => LoginProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<SignUpProvider>(
    create: (_) => SignUpProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<OtpVerificationProvider>(
    create: (_) => OtpVerificationProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<HomeProvider>(
    create: (_) => HomeProvider(),
    lazy: true,
  ),
];
