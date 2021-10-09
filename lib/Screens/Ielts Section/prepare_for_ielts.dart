import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class PrepareForIelts extends StatefulWidget {
  const PrepareForIelts({ Key? key }) : super(key: key);

  @override
  _PrepareForIeltsState createState() => _PrepareForIeltsState();
}

class _PrepareForIeltsState extends State<PrepareForIelts>with SingleTickerProviderStateMixin {
  late TabController _tabController;
 @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(btntext: ""),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  // height: MediaQuery.of(context).size.height * 0.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Color(0xff00B0D7),
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(
                        icon: Image.asset("assets/png/listeningTab.png",height: 40,),

                        text: 'Listening',
                      ),
                      Tab(

                        icon: Image.asset("assets/png/readingTab.png",height: 40,),
                        text: 'Reading',
                      ),
                      Tab(
                        icon: Image.asset("assets/png/speakingTab.png",height: 40,),

                        text: 'Speaking',
                      ),
                      Tab(
                        icon: Image.asset("assets/png/writingTab.png",height: 40,),
                        text: 'Writing',
                      ),
                    ],
                  ),
                ),

                // tab bar view

                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      tabsPage(),
                      tabsPage(),
                      tabsPage(),
                      tabsPage(),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
Widget tabsPage(){
  return Column(children: [
  bulletCard(context, "The best way to improve your listening skill is to practice listening in english as much as possible."),
  bulletCard(context, "The best way to improve your listening skill is to practice listening in english as much as possible."),
  bulletCard(context, "The best way to improve your listening skill is to practice listening in english as much as possible."),
  bulletCard(context, "The best way to improve your listening skill is to practice listening in english as much as possible.")
  ],);
}

  
}