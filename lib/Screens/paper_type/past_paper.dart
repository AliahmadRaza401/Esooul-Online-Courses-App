import 'package:flutter/material.dart';

class PastPapersDropDown extends StatefulWidget {
  const PastPapersDropDown({Key? key}) : super(key: key);

  @override
  _PastPapersDropDownState createState() => _PastPapersDropDownState();
}

class _PastPapersDropDownState extends State<PastPapersDropDown> {

  void yearlist(){
    for(int i=0; i<10;i++){
      
    };
  }
  String dropdownValue = 'One';
  int i = 0;
  var currentyear;
  DateTime Currentdate = new DateTime.now();
  DateTime now = new DateTime.now();
  DateTime tenYearsBefore = DateTime(DateTime.now().year - 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
                child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .045),
                    decoration: BoxDecoration(
                        color: Color(0xff00B0D7),
                        borderRadius: BorderRadius.circular(30)),
                    height: MediaQuery.of(context).size.height * .65,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0).copyWith(top: 50),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .65,
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  hintText: "Search your board here"),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 3,
                                )
                              ]),
                              padding: EdgeInsets.all(40),
                          height: MediaQuery.of(context).size.height * .5,
                          width: MediaQuery.of(context).size.width * .75,
                          child: Column(children: [
                            Row(children: [
                              Text("${Currentdate.year}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),

                            Row(children: [
                              Text("${Currentdate.year-1}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),

                            Row(children: [
                              Text("${Currentdate.year-2}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),

                            Row(children: [
                              Text("${Currentdate.year-3}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),

                            Row(children: [
                              Text("${Currentdate.year-4}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),
                             Row(children: [
                              Text("${Currentdate.year-5}",style: TextStyle(color: Colors.black,fontSize: 25),),
                            ],),
                            Divider(color: Colors.grey),
                             GestureDetector(
                               onTap: (){
                                 Navigator.of(context).pop();
                               },
                               child: Container(
                                 width: double.infinity,
                                 color: Colors.white,
                                 child: Row(children: [
                                  Text("${Currentdate.year-6}",style: TextStyle(color: Colors.black,fontSize: 25),),
                                                           ],),
                               ),
                             ),
                            Divider(color: Colors.grey),
                          ],),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .23,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff72C6EF),
                        borderRadius: BorderRadius.circular(30)),
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .55,
                    child: Center(
                        child: Image.asset(
                      "assets/png/homelogo.png",
                    )),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * .055,
                    right: MediaQuery.of(context).size.width * .09,
                    child: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.white,
                    ))
              ],
            )
            ),
           
          ],
        ),
      ),
    );
  }
}

















