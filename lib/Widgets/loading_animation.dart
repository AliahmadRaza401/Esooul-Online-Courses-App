import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

Widget LoadingBounceAnimation(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.5,
    child: LoadingBouncingGrid.square(
      size: MediaQuery.of(context).size.height * .05,
      backgroundColor: Color(0xff01B0D7),
    ),
  );
}
