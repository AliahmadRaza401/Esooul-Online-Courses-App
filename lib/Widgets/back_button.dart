import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Color(0xff3A6073),
              Color(0xff16222A),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            left: BorderSide(
              color: Colors.white,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              offset: Offset(20.0, 20.0),
              blurRadius: 20.0,
              spreadRadius: 40.0,
            ),
          ],
        ),
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
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "< back",
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/png/backbuttonimage.png",
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.080,
              )
            ],
          ),
        ),
      ),
    );
  }
}
