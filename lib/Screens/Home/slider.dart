import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Sliders extends StatefulWidget {
  const Sliders({Key? key}) : super(key: key);

  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: double.infinity,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .001,
        left: MediaQuery.of(context).size.width * .002,
        right: MediaQuery.of(context).size.width * .002,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MediaQuery.of(context).size.width * .08),
              topRight:
                  Radius.circular(MediaQuery.of(context).size.width * .08))),
      child: ImageSlideshow(
        
        width: double.infinity,
        isLoop: true,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,

        indicatorBackgroundColor: Colors.grey,

        children: [
           Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.of(context).size.width * .08),
          topRight:
              Radius.circular(MediaQuery.of(context).size.width * .08)),
                image: DecorationImage(
          image: AssetImage("assets/png/image 5.png"),
          fit: BoxFit.cover,
        ),
              ),
            ),
          
         Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.of(context).size.width * .08),
          topRight:
              Radius.circular(MediaQuery.of(context).size.width * .08)),
                image: DecorationImage(
          image: AssetImage("assets/png/slider2.png"),
          fit: BoxFit.cover,
        ),
              ),
            ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.of(context).size.width * .09),
          topRight:
              Radius.circular(MediaQuery.of(context).size.width * .09)),
                image: DecorationImage(
          image: AssetImage("assets/png/slider3.png"),
          fit: BoxFit.cover,
        ),
              ),
            ),
        ],
      
        autoPlayInterval: 2000,

      ),
    );
  }
}
