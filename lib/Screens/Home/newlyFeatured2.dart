import 'package:flutter/material.dart';

class NewlyFeatured2 extends StatefulWidget {
  const NewlyFeatured2({ Key? key }) : super(key: key);

  @override
  _NewlyFeatured2State createState() => _NewlyFeatured2State();
}

class _NewlyFeatured2State extends State<NewlyFeatured2> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .45,
     
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Newly Featured Courses",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.black,
                      Colors.white,
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * .002,
                width: MediaQuery.of(context).size.width * .37,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                smallcards("assets/png/Rectangle 9.png", "Intro to Business",
                    "John Doe ", 1000, 1500),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                smallcards("assets/png/Rectangle 9.png", "Intro to Business",
                    "John Doe ", 1000, 1500),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                smallcards("assets/png/Rectangle 9.png", "Intro to Business",
                    "John Doe ", 1000, 1500),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget smallcards(
      String img, String title, String name, double discounted, double price) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .001,
        left: MediaQuery.of(context).size.width * .005,
      ),
      decoration: BoxDecoration(
        borderRadius:
       BorderRadius.circular(MediaQuery.of(context).size.height * .02),
        color: Color(0xff2F2E2E),
      ),
      height: MediaQuery.of(context).size.height * .26,
      width: MediaQuery.of(context).size.width * .5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        name,
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Text(
                            'PKR $discounted',
                            style:
                                TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .06,
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
