import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Profile/Terms%20and%20privacy.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/comingSoon_msg.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Privacy.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late LoginProvider _loginProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginProvider = Provider.of<LoginProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/png/stting back.png"),
              // ),
              color: Colors.white,
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Header(btntext: "Setting"),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                setting(
                    ComingSoon(), "assets/png/sliders2.png", "Settings", .05),
                setting(ComingSoon(), "assets/png/user-alt.png", 'Edit Profile',
                    .05),
                setting(ComingSoon(), "assets/png/Vector.png",
                    'Pay to unlock pack', .04),
                setting(ComingSoon(), "assets/png/time.png",
                    'Transaction History', .05),
                setting(
                    ComingSoon(), "assets/png/arrow.png", 'Change Class', .05),
                setting(
                    ComingSoon(), "assets/png/arrow.png", 'Change Board', .05),
                setting(
                    Terms(), "assets/png/terms.png", 'Terms and Services', .05),
                setting(
                    Privacy(), "assets/png/privacy.png", 'Privacy Policy', .05),
                setting(ComingSoon(), "assets/png/help.png",
                    'Frequently asked questions', .05),
                setting(ComingSoon(), "assets/png/update.png", 'Updates', .05),
                setting(ComingSoon(), "assets/png/about.png", 'About us', .05),
                setting(ComingSoon(), "assets/png/report-card.png",
                    'Report Card', .05),
                setting(LogIn(), "assets/png/log-out.png", 'Logout', .05),
                // SizedBox(
                //   height: 100,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget setting(goTo, String img, String title, double width) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => goTo));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  img,
                  height: MediaQuery.of(context).size.height * .045,
                  width: MediaQuery.of(context).size.width * .05,
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Color(0xff677A8F), fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
