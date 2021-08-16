import 'package:flutter/material.dart';

class NewlyFeaturedCourses extends StatefulWidget {
  const NewlyFeaturedCourses({Key? key}) : super(key: key);

  @override
  _NewlyFeaturedCoursesState createState() => _NewlyFeaturedCoursesState();
}

class _NewlyFeaturedCoursesState extends State<NewlyFeaturedCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .5,
     
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
                width: MediaQuery.of(context).size.width * .35,
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
                    "John Doe ", 1000,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                smallcards("assets/png/Rectangle 9.png", "Intro to Business",
                    "John Doe ", 1000,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                smallcards("assets/png/Rectangle 9.png", "Intro to Business",
                    "John Doe ", 1000,),
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
      String img, String title, String name, double discounted, ) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.height * .02),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.black,
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height * .373,
          width: MediaQuery.of(context).size.width * .66,
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .001,
            left: MediaQuery.of(context).size.width * .005,
          ),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.height * .02),
            color: Color(0xff404040),
          ),
          height: MediaQuery.of(context).size.height * .37,
          width: MediaQuery.of(context).size.width * .65,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .02),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  height: MediaQuery.of(context).size.height * .2,
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
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            name,
                            style: TextStyle(fontSize: 12),
                          ),
                          Row(
                            children: [
                              Text(
                                'PKR $discounted',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.blue),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                                                     side: BorderSide(width:1, color:Colors.white),

                          primary: Color(0xff810000),
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .04,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        child: Text("Add to Cart",style: TextStyle(fontSize: 12),)),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                                                     side: BorderSide(width:1, color:Colors.white),

                          primary: Color(0xff024360),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        child: Text("Add to wish list",style: TextStyle(fontSize: 12)))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
