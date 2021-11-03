import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_provider.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:provider/provider.dart';

class AboutWritingTest extends StatefulWidget {
  var about;
  AboutWritingTest({@required this.about});

  @override
  _AboutWritingTestState createState() => _AboutWritingTestState();
}

class _AboutWritingTestState extends State<AboutWritingTest> {
  late WritingProvider writingProvider;
  @override
  void initState() {
    super.initState();
    writingProvider = Provider.of<WritingProvider>(context, listen: false);
    getTest();
  }

  var about;
  var writingData;

  getTest() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    var data = await writingProvider.writingTest(token);
    // print('data: $data');

    if (data['status'] == 200) {
      setState(() {
        writingData = data['data'][0];
        about = writingData['about'];
      });
    } else {
      CommomWidget().okayAlertDialog(
        context,
        "Failed",
        "Check your internet connection",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: "About Writing Test"),
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    about == null
                        ? LoadingBounceAnimation(context)
                        : Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Html(
                              data: about,
                              // style: {'p': Style(color: Colors.black)},
                            ),
                          ),
                    // Html(data: widget.about)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
