import 'package:flutter/material.dart';

class LikedCourses extends StatefulWidget {
  const LikedCourses({Key? key}) : super(key: key);

  @override
  _LikedCoursesState createState() => _LikedCoursesState();
}

class _LikedCoursesState extends State<LikedCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .49,
      child: Column(
        children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Liked Courses",
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
                  width: MediaQuery.of(context).size.width * .45,
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
                cards("assets/png/Rectangle 9.png","Intro to Business","John Doe ",1000,1500),
                SizedBox(width: MediaQuery.of(context).size.width *.03,),
                  cards("assets/png/Rectangle 9.png","Intro to Business","John Doe ",1000,1500),
                    SizedBox(width: MediaQuery.of(context).size.width *.03,),
                  cards("assets/png/Rectangle 9.png","Intro to Business","John Doe ",1000,1500),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cards(String img,String title,String name,double discounted,double price) {
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
          height: MediaQuery.of(context).size.height * .4,
          width: MediaQuery.of(context).size.width * .8,
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
          height: MediaQuery.of(context).size.height * .395,
          width: MediaQuery.of(context).size.width * .79,
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
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            name,
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              Text(
                                'PKR $discounted',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.blue),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .06,
                              ),
                              Text(
                                "PKR $price",
                                style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
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
                          primary: Color(0xff810000),
                           side: BorderSide(width:1, color:Colors.white),
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *.08,),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        child: Text("Add to Cart")),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff024360),
                           side: BorderSide(width:1, color:Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        child: Text("Add to wish list"))
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
