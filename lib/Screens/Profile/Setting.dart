import 'package:esooul/Screens/Profile/Terms%20and%20privacy.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'Privacy.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .01,
                right: MediaQuery.of(context).size.width * .01),
            decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/png/stting back.png"),
            
          ),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      MediaQuery.of(context).size.width * .1,
                    ),
                    topRight: Radius.circular(
                        MediaQuery.of(context).size.width * .1))),
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .02,
              right: MediaQuery.of(context).size.width * .02,
              top: MediaQuery.of(context).size.height * .01,
            ),
            height: MediaQuery.of(context).size.height * .818,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(iconPath:'assets/png/presentation4.png' ),
                  setting("assets/png/sliders2.png", "Settings", .05),
                  setting("assets/png/user-alt.png", 'Edit Profile', .05),
                  setting("assets/png/Vector.png", 'Pay to unlock pack', .04),
                  setting("assets/png/time.png", 'Transaction History', .05),
                  setting("assets/png/arrow.png", 'Change Class', .05),
                  setting("assets/png/arrow.png", 'Change Board', .05),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Terms()));
                    },
                    child: setting("assets/png/terms.png", 'Terms and Services', .05)),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Privacy()));
                    },
                    child: setting("assets/png/privacy.png", 'Privacy Policy', .05)),
                  setting("assets/png/help.png", 'Frequently asked questions', .05),
                  setting("assets/png/update.png", 'Updates', .05),
                  setting("assets/png/about.png", 'About us', .05),
                  setting("assets/png/report-card.png", 'Report Card', .05),
                  setting("assets/png/log-out.png", 'Logout', .05),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget setting(String img, String title, double width) {
    return ListTile(
      leading: Image.asset(
        img,
        height: MediaQuery.of(context).size.height * .05,
        width: MediaQuery.of(context).size.height * width,
      ),
      title: Text(
        title,
        style: TextStyle(color: Color(0xff677A8F), fontSize: 20),
      ),
    );
  }
}
