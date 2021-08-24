import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final String buttontext;
  BackButtonWidget({
    Key? key,
    required this.buttontext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     stops: [0.0, 1.0],
        //     colors: [
        //       Color(0xff3A6073),
        //       Color(0xff16222A),
        //     ],
        //   ),
        //   border: Border(
        //     top: BorderSide(
        //       color: Colors.black,
        //       width: 1.5,
        //     ),
        //     left: BorderSide(
        //       color: Colors.black,
        //       width: 1.5,
        //     ),
        //     right: BorderSide(
        //       color: Colors.black,
        //       width: 1.5,
        //     ),
        //   ),
        //   boxShadow: <BoxShadow>[
        //     BoxShadow(
        //       color: Colors.black,
        //       offset: Offset(20.0, 20.0),
        //       blurRadius: 20.0,
        //       spreadRadius: 40.0,
        //     ),
        //   ],
        // ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 15.0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(50, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "< Back",
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.w700,
                      color: Color(0xff2575AE),
                    ),
                  ),
                ),
              ),
              Text(
                buttontext,
                style: TextStyle(
                    color: Color(0xff100F0F),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0),
              ),
              SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.009,
                  ),
              // Image.asset(
              //   iconPath,
              //   height: MediaQuery.of(context).size.height * 0.050,
              //   width: MediaQuery.of(context).size.width * 0.080,
              // )
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                child: Icon(
                  Icons.home,
                  size: 25,
                  color: Color(0xff2575AE),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
