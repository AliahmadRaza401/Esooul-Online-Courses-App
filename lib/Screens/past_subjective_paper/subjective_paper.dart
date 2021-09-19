import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Paper/paper_answers_video.dart';
import 'package:esooul/Screens/past_objective/past_objective_provider.dart';
import 'package:esooul/Screens/past_subjective_paper/past_subjective_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PastSubjective extends StatefulWidget {
  @override
  _PastSubjectiveState createState() => _PastSubjectiveState();
}

class _PastSubjectiveState extends State<PastSubjective>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late PastSubjectiveProvider _pastSubjectiveProvider;
  var result;
  bool _loader = true;
  late YearlyPaperProvider _yearlyPaperProvider;
  var paperID;
  bool _isLoading = true;
  late PDFDocument document;
  late PDFDocument documentAns;
  bool showans = false;
  // late int questionNumber = 0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    _pastSubjectiveProvider = Provider.of(context, listen: false);
    _yearlyPaperProvider = Provider.of(context, listen: false);
    paperID = _yearlyPaperProvider.yearlyPaperID;
    getData();
  }

  loadDocument() async {
    print("pdf Loading------------------");
    for (var i in result) {
      print(i);
      document = await PDFDocument.fromURL(result[0].question);
      documentAns = await PDFDocument.fromURL(result[0].answer);
    }
    setState(() {
      _isLoading = false;
    });
  }

  getData() async {
      var token = await Provider.of<SignUpProvider>(context, listen: false)
          .getUserTokenSF();
    result = await _pastSubjectiveProvider.pastSubjective(token,paperID);
    setState(() {
      _loader = false;
    });
    print('Subjective result: $result');
    loadDocument();
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.040,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TabBar(
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

                // tab bar view

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

  Widget subjectivePaper() {
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
                partdesc(
                    'I', 'Write short answers to any FIVE (5) questions: (10)'),
              ],
            ),
            _loader == true
                ? LoadingBounceAnimation(context)
                : _pastSubjectiveProvider.pastSubjectiveData.isEmpty
                    ? noDataMsg(context)
                    : ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemCount:
                                  result.length == null ? 0 : result.length,
                              itemBuilder: (context, i) {
                                return Column(
                                  children: [
                                    _question(i + 1, '', result[i].question,
                                        result[i].answer.toString()),
                                    // loadDocument()
                                  ],
                                );
                              })
                        ],
                      ),
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

  Widget _question(number, String part, String question, ansUrl) {
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
              // loadDocument(question),
              _showPDF(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print(showans);
                        setState(() {
                          showans = !showans;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff3ECBEA),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                      child: Text(
                        showans != true ? "Show Answer" : "Hide Answer",
                        style: TextStyle(color: Colors.black),
                      )),
                  Visibility(
                    visible: showans,
                    child: _showAnsPDF(),
                  ),
                ],
              ),

              //showing pdf file from url
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

  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  _showPDF() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width * 0.850,
      child: //showing pdf file from url
          Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
                //uncomment below line to preload all pages
                lazyLoad: false,
                // uncomment below line to scroll vertically
                scrollDirection: Axis.horizontal,

                //uncomment below code to replace bottom navigation with your own
                navigationBuilder:
                    (context, page, totalPages, jumpToPage, animateToPage) {
                  return ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.first_page),
                        onPressed: () {
                          jumpToPage();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page),
                        onPressed: () {
                          jumpToPage(page: totalPages! - 1);
                        },
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }

  _showAnsPDF() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width * 0.850,
      child: //showing pdf file from url
          Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: documentAns,
                zoomSteps: 1,
                //uncomment below line to preload all pages
                lazyLoad: false,
                // uncomment below line to scroll vertically
                scrollDirection: Axis.horizontal,

                //uncomment below code to replace bottom navigation with your own
                navigationBuilder:
                    (context, page, totalPages, jumpToPage, animateToPage) {
                  return ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.first_page),
                        onPressed: () {
                          jumpToPage();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page),
                        onPressed: () {
                          jumpToPage(page: totalPages! - 1);
                        },
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
