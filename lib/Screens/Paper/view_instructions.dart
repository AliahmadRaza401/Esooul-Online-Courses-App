import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class ViewInstructions extends StatefulWidget {
  ViewInstructions({Key? key}) : super(key: key);

  @override
  _ViewInstructionsState createState() => _ViewInstructionsState();
}

class _ViewInstructionsState extends State<ViewInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2F2F2F),
        child: ListView(children: [
          Header(btntext: '',
      ),
          Stack(children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .0080,
                  left: MediaQuery.of(context).size.width * .017,
                  right: MediaQuery.of(context).size.width * .017,
                  bottom: MediaQuery.of(context).size.height * 0.0),
              height: MediaQuery.of(context).size.height * .78,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.white10,
                    ],
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08))),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01,
                  left: MediaQuery.of(context).size.width * .02,
                  right: MediaQuery.of(context).size.width * .02,
                  bottom: MediaQuery.of(context).size.height * 0.0),
              height: MediaQuery.of(context).size.height * .78,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .07),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .07))),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: BackButtonWidgetSubjective(
                        text: "View Instructions",
                        iconPath: 'assets/png/hearticon.png',
                      ),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.020,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _numberContainer("4"),
                          _numberContainer("5"),
                          _numberContainer("6"),
                          _numberContainer("7"),
                          _numberContainer("8"),
                          _numberContainer("9"),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.040,
                            width: MediaQuery.of(context).size.width * 0.080,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff677A8F)),
                            child: Center(
                                child: Text(
                              "10",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .002,
                      width: MediaQuery.of(context).size.width * .75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.white,
                            Colors.blue,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _questionText("What is the meaning of UI UX design?"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _questionText("What is the meaning of UI UX design?"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _questionText("What is the meaning of UI UX design?"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _questionText("What is the meaning of UI UX design?"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _questionText("What is the meaning of UI UX design?"),
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  _numberContainer(String no) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.040,
      width: MediaQuery.of(context).size.width * 0.080,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xffD4D4D4)),
      child: Center(
          child: Text(
        no,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }

  _questionText(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        Container(
          child: TextFormField(
            minLines: 3,
            maxLines: 8,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Write your answer',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff00B0D7), //background color of button
                //border width and color
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: Text('Show Answer'),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class BackButtonWidgetSubjective extends StatelessWidget {
  final String iconPath;
  final String text;
  BackButtonWidgetSubjective({
    Key? key,
    required this.iconPath,
    required this.text,
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
              color: Colors.black,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.black,
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
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  // child: Text(
                  //   "< Back",
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     // fontWeight: FontWeight.w700,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Image.asset(
                iconPath,
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
