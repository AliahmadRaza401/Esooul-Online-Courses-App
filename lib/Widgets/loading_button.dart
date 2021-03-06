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
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUp()),
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // InnerShadow(
          //   color: Colors.black.withOpacity(0.3),
          //   blur: 5,
          //   offset: Offset(20, 15),
          Container(
            height: 149,
            width: 149,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFE0D7D7),
                    // Color(0xff6EC2EB),
                    Colors.white
                  ]),

              // gradient: RadialGradient(
              //   colors: [Color(0xff214966), Color(0xff046696)],
              // ),
            ),
            child: CircularProgressIndicator(
              value: 1.0,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          Container(
            height: 149,
            width: 149,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                shape: BoxShape.circle,
                color: Colors.transparent),
            child: CircularProgressIndicator(
              value: controller.value,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00B0D7)),
            ),
          ),
          Column(
            children: [
              Text(
                "Press and",
                style: TextStyle(
                    color: Color(0xff2575AE), fontWeight: FontWeight.w600),
              ),
              Text(
                "Hold to create",
                style: TextStyle(
                    color: Color(0xff2575AE), fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
