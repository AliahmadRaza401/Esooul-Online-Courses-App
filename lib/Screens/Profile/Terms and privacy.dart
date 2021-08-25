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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(btntext: 'Terms & Services',
              ),
            Container(
              height: MediaQuery.of(context).size.height * .75,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  ),
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * .03),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    
                    Wrap(
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis rutrum nulla, et egestas orci. Cras pretium consequat elit ut efficitur. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus vehicula sapien a ipsum suscipit condimentum. Phasellus vitae diam eu risus consequat dignissim. Vestibulum accumsan pretium magna. Integer at consectetur leo."
                            ,style: TextStyle(color: Colors.black),
                            )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height *.03,),
                    Wrap(
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis rutrum nulla, et egestas orci. Cras pretium consequat elit ut efficitur. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus vehicula sapien a ipsum suscipit condimentum. Phasellus vitae diam eu risus consequat dignissim. Vestibulum accumsan pretium magna. Integer at consectetur leo."
                            ,style: TextStyle(color: Colors.black),
                            )
                      ],
                    ),
                    Container(height: MediaQuery.of(context).size.height*.25,
                    decoration: BoxDecoration(
                         image: DecorationImage(
                image: AssetImage("assets/png/Terms bg.png"),
                fit: BoxFit.contain,
                
                        ),
                    ),
                    )
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