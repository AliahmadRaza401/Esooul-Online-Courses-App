import 'package:esooul/Screens/Paper/paper_answers_video.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
          Header(btntext: "Subjective"),
          Container(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height * 0.68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.040,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child:  TabBar(
                    
                      controller: _tabController,
                      // indicator: BoxDecoration(color: Colors.cyan[500]),
                      labelColor: Colors.cyan[900],
                      unselectedLabelColor: Colors.black38,
                      tabs: [
                        Tab(
                          text: 'Question paper',
                        ),
                        Tab(
                          text: 'Answer with video tutorial',
                        ),
                        
                      ],
                    ),
                  ),
                
                // tab bar view here
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                    subjectivePaper(),
                    PaperAnswerVideo(),
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


Widget subjectivePaper(){
  return Container(
              height: MediaQuery.of(context).size.height * .7,
              // width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.all(30).copyWith(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        PaperInstructions(),
                      ],
                    ),
                    Wrap(children: [
                      Text(
                        "Please read the text below carefully so you can understand it",
                        style: TextStyle(color: Color(0xff1D6CA7)),
                      ),
                    ]),
                    Wrap(
                      children: [
                        Text(
                          "Note: Four possible answers A B C and D to each question are given. The choice which you think is correct fill that circle in fromt of that question with Marker or pen ink in the answer-book cutting or filling two or more circles will result in zero mark in that specific question.",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        partdesc('I', 'Write short answers to any FIVE (5) questions: (10)'),
                      ],
                    ),
                    Row(children: [
                    

                    ],),
                 
                    _question(
                      1,
                      '',
                      'What is meant by chemical equilibrium? ',
                    ),
                    _question(
                      2,'',
                      'What is meant by a irreversible reaction?',
                    ),
                    _question(
                      3,'',
                      'What do you mean by the extent of a reaction?',
                    ),

                    Row(children: [
                      partdesc('2', 'Write short answers to any FIVE (5) questions: (10)')
                    ],),

                    
                    _question(1,'','What is meant by isomerism?'),
                    _question(2 ,'','What is an ester group? Write down the formula of ethylacetate.'),                   
                   _question(3, '', 'Write any two uses of organic compounds.'),

                
                  ],
                ),
              ),
            );
}

  Widget partdesc(String parts, String desc) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Part - $parts ",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text(
            "$desc",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text(
            "Solutions :",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
        ],
      ),
    );
  }

  Widget _question(int number, String part, String question) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Wrap(
                children: [
                  Text(
                    "Question-$number",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                '$part',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * .8,
                child: Wrap(
                  children: [
                    Text(
                      "$question",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Show Answer",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff3ECBEA),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget PaperInstructions() {
    return Container(
        height: MediaQuery.of(context).size.height * .23,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/png/BISE-Lahore-Logo.png",
                      width: MediaQuery.of(context).size.width * .13,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .71,
                      child: Wrap(
                        children: [
                          Text(
                            "Board of Intermediate and Secondary Education Lahore 2015-2017 to 2018-2020",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chemistry",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text("Maximum Marks",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Topic",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Type",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Time",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "10th",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text("48",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Chemical Equilibrium",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Subjective",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("1.45 hours",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}


