// @dart=2.9
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Splash/splash.dart';
import 'package:esooul/providers/multi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiProvider,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.blue,
              accentColor: Colors.blue,
              fontFamily: 'Georgia',
              unselectedWidgetColor: Colors.blue),
          home: Splash()),
    );
  }
}
