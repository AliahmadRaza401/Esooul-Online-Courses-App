import 'package:esooul/Screens/Authentication/signUp/signup.dart';
import 'package:esooul/Widgets/innerShadow.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  @override
  LoadingButtonState createState() => LoadingButtonState();
}

class LoadingButtonState extends State<LoadingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        if (controller.status == AnimationStatus.forward) {
          controller.reverse();
        } else if (controller.status == AnimationStatus.completed) {
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUp()),
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          InnerShadow(
            color: Colors.black.withOpacity(0.5),
            blur: 10,
            offset: Offset(20, 15),
            child: Container(
              height: 199,
              width: 199,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0xff214966), Color(0xff046696)],
                ),
              ),
              child: CircularProgressIndicator(
                value: 1.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.transparent),
            child: CircularProgressIndicator(
              value: controller.value,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff0038FF)),
            ),
          ),
          Center(
            child: Text(
              "Press and\nHold to create",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
