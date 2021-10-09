import 'package:esooul/Screens/Ielts%20Section/Reading/reading_modules.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'ielts_widget.dart';
import '../Listening/listning_modules.dart';

class IeltsModules extends StatefulWidget {
  const IeltsModules({ Key? key }) : super(key: key);

  @override
  _IeltsModulesState createState() => _IeltsModulesState();
}

class _IeltsModulesState extends State<IeltsModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        children: [
          Header(btntext: ''),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Modules of IELTS",style: TextStyle(color: Color(0xff196C7E)),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
         GestureDetector(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListningModule()));
           },
           child: moduleCard(context,'assets/png/listning.png','Listening')),
         GestureDetector(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReadingModule()));
           },
           child: moduleCard(context,'assets/png/reading.png','Reading')),
         moduleCard(context,'assets/png/writing.png','Writing'),
         moduleCard(context,'assets/png/speaking.png','Speaking'),
        ],
      )
      )
    );
  }
}