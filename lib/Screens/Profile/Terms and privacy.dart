import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({ Key? key }) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * .02,
                right: MediaQuery.of(context).size.height * .02),
            height: MediaQuery.of(context).size.height * .85,
            decoration: BoxDecoration(
               image: DecorationImage(
            image: AssetImage("assets/png/Terms bg.png"),
            fit: BoxFit.contain,
            
          ),
                color: Color(0xff444444),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      MediaQuery.of(context).size.height * .05,
                    ),
                    topRight: Radius.circular(
                      MediaQuery.of(context).size.height * .05,
                    ))),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * .02),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms and Services",
                      style: TextStyle(fontSize: 25, color: Color(0xff00B0D7)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Wrap(
                    
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis rutrum nulla, et egestas orci. Cras pretium consequat elit ut efficitur. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus vehicula sapien a ipsum suscipit condimentum. Phasellus vitae diam eu risus consequat dignissim. Vestibulum accumsan pretium magna. Integer at consectetur leo.")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Wrap(
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis rutrum nulla, et egestas orci. Cras pretium consequat elit ut efficitur. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus vehicula sapien a ipsum suscipit condimentum. Phasellus vitae diam eu risus consequat dignissim. Vestibulum accumsan pretium magna. Integer at consectetur leo.")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}