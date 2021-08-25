import 'package:flutter/material.dart';
import 'package:slide_button/slide_button.dart';

class MySlideButton extends StatefulWidget {
  MySlideButton({Key? key}) : super(key: key);

  @override
  _SlideButtonState createState() => _SlideButtonState();
}

class _SlideButtonState extends State<MySlideButton> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SlideButton(
            //   height: 64,
            //   backgroundChild: Center(
            //     child: Text("This is a centered text"),
            //   ),
            //   backgroundColor: Colors.amber,
            //   slidingBarColor: Colors.blue,
            //   slideDirection: SlideDirection.RIGHT,
            //   onButtonOpened: () {
            //     textController1.text = "Opened";
            //   },
            //   onButtonClosed: () {
            //     textController1.text = "Closed";
            //   },
            //   onButtonSlide: (value) {
            //     textController2.text = value.toString();
            //   },
            // ),
            // SlideButton(
            //   height: 64,
            //   borderRadius: 0.0,
            //   backgroundColor: Colors.transparent,
            //   slidingChild: Center(
            //     child: Text("This is a sliding text."),
            //   ),
            //   slidingBarColor: Colors.blue,
            //   slideDirection: SlideDirection.LEFT,
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(13, 2, 13, 2),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(60)),
                child: SlideButton(
                  height: 45,
                  slidingChild: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff2777B0),
                              borderRadius: BorderRadius.circular(40)),
                          width: 140,
                          height: 80,
                          child: Center(
                            child: Text(
                              "Swipe",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          )),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  slidingBarColor: Colors.transparent,
                  slideDirection: SlideDirection.RIGHT,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
