import 'package:esooul/Widgets/innerShadow.dart';
import 'package:flutter/material.dart';
String bullet="\u2022";
Widget bulletCard(BuildContext context,String description){
  return Container(
    width: MediaQuery.of(context).size.width *.9,
    // color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
Text("$bullet",style: TextStyle(color: Colors.black,fontSize: 20),),
SizedBox(    width: MediaQuery.of(context).size.width *.04,
),
Expanded(child: Text("$description",style: TextStyle(color: Colors.black,fontSize: 12),)),
      ],)
    ),
  );
}



Widget moduleCard(BuildContext context, String icon, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffFFFFFF),
      ),
      child: ListTile(
        leading: Image.asset('$icon'),
        title: Text(
          "$description",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        // trailing: Icon(
        //   Icons.favorite_border_outlined,
        //   color: Colors.red,
        //   size: 30,
        // ),
      ),
    ),
  );
}

 Widget snapshot(BuildContext context,String imgPath){
   return Padding(
                 padding: const EdgeInsets.symmetric(vertical:10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width*.9,
                       height:  MediaQuery.of(context).size.height *.3,
                       decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.contain)),)
                   ],
                 ),
               );
 }


// this card containe title without trailing icon in listTile
Widget moduleCard2(BuildContext context, String icon, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffFFFFFF),
      ),
      child: ListTile(
        leading: Image.asset('$icon'),
        title: Text(
          "$description",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        
      ),
    ),
  );
}
// this card containe title and trailing for buynow both in listTile
Widget practiceTestCard(BuildContext context, String description, String buy) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffFFFFFF),
      ),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xff00B0D7),
              borderRadius: BorderRadius.circular(10)),
          height: MediaQuery.of(context).size.height * .07,
          width: MediaQuery.of(context).size.width * .04,
        ),
        title: Text(
          "$description",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        trailing: Text("$buy",
            style: TextStyle(color: Color(0xffFF9D43), fontSize: 13)),
      ),
    ),
  );
}

Widget myHeading(BuildContext context, String heading) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width *.9,
          child: Wrap(
            children: [
              Text(
                heading,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
            ],
          ),
        ),
      ],
    );
  }
// this card containetitle and subtitle both in listTile
Widget prepareTestCard(
    BuildContext context, String icon, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .13,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffFFFFFF),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('$icon'),
        ),
        title: Text(
          "$title",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        subtitle: Text(
          "$subtitle",
          style: TextStyle(color: Color(0xff696969), fontSize: 12),
        ),
      ),
    ),
  );
}

  Widget myText(BuildContext context,String text) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03),
      ],
    );
  }

Widget grammerAndVocabularyCard(BuildContext context,String icon, String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height *.04,
            width: MediaQuery.of(context).size.width *.14,
            decoration: BoxDecoration(
              border:Border.all(color: Colors.blue.withOpacity(.7)) ,
            color: Colors.amber,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(icon),fit: BoxFit.cover)
            ),
          ),
          SizedBox(
                width: MediaQuery.of(context).size.width * .04,
              ),
          Wrap(
            children: [
              Text(
                heading,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
            ],
          ),
        ],
      ),
    );
  }

Widget mcqs(String number, String question) {
  return Row(
    children: [
      Expanded(
          child: Text(
        "$number. " + "  $question",
        style: TextStyle(color: Colors.black),
      ))
    ],
  );
}

Widget selectTest(BuildContext context) {
  return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [Color(0xff72C6EF), Color(0xff004E8F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
              ),
              Text(
                "Select your Test",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .07,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.close_outlined,
                  size: 25,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    InnerShadow(
                      color: Colors.grey,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .66,
                        height: MediaQuery.of(context).size.height * .32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(.7),
                          //     spreadRadius: 3,
                          //     blurRadius: 3,
                          //     offset:Offset(1,1)
                          //   )
                          // ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .07,
                                  width:
                                      MediaQuery.of(context).size.width * .11,
                                  decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/png/generelTraining.png"),
                                          fit: BoxFit.contain)),
                                ),
                                Container(
                                  // color: Colors.black,
                                  width:
                                      MediaQuery.of(context).size.width * .42,
                                  child: Text(
                                    "General Training",
                                    style: TextStyle(
                                        color: Color(0xff605A5A), fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  // color: Colors.grey.withOpacity(.7),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.7),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 3))
                                  ]),
                              height: MediaQuery.of(context).size.height * .002,
                              width: MediaQuery.of(context).size.width * .65,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .07,
                                  width:
                                      MediaQuery.of(context).size.width * .11,
                                  decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/png/academic.png"),
                                          fit: BoxFit.contain)),
                                ),
                                Container(
                                  // color: Colors.black,
                                  width:
                                      MediaQuery.of(context).size.width * .42,
                                  child: Text(
                                    "Academic",
                                    style: TextStyle(
                                        color: Color(0xff605A5A), fontSize: 18),
                                  ),
                                ),
                              ],
                            )
                            // card('assets/png/academic.png', 'Academic')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ));
}
