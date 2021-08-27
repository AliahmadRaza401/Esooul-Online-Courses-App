import 'package:esooul/Widgets/swipe_button/swipable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A Button that can detect swiping movement with shimmering arrows on far end.
/// Button that swipe and increase its width to maximum
// ignore: must_be_immutable
class SwipingButton extends StatefulWidget {
  /// The text that the button will display.
  final String text;
  final String containerText;

  /// with of the button
  final double height;

  /// The callback invoked when the button is swiped.
  final VoidCallback onSwipeCallback;

  /// Optional changes
  final Color swipeButtonColor;
  final Color backgroundColor;
  final Color iconColor;
  TextStyle? buttonTextStyle;
  final EdgeInsets padding;

  /// The decimal percentage of swiping in order for the callbacks to get called, defaults to 0.75 (75%) of the total width of the children.
  final double? swipePercentageNeeded;

  SwipingButton({
    Key? key,
    required this.text,
    required this.containerText,
    this.height = 40,
    required this.onSwipeCallback,
    this.swipeButtonColor = Colors.blue,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.fromLTRB(0, 0, 0, 0),
    this.iconColor = Colors.white,
    this.buttonTextStyle,
    this.swipePercentageNeeded,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => StateSwipingButton(
      text: text,
      onSwipeCallback: onSwipeCallback,
      height: height,
      padding: this.padding,
      swipeButtonColor: this.swipeButtonColor,
      backgroundColor: this.backgroundColor,
      iconColor: this.iconColor,
      buttonTextStyle: this.buttonTextStyle);
}

class StateSwipingButton extends State<SwipingButton> {
  /// The text that the button will display.
  final String text;
  final double height;

  /// The callback invoked when the button is swiped.
  final VoidCallback onSwipeCallback;
  bool isSwiping = false;
  double opacityVal = 1;
  final Color swipeButtonColor;
  final Color backgroundColor;
  final Color iconColor;
  TextStyle? buttonTextStyle;
  final EdgeInsets padding;

  StateSwipingButton({
    Key? key,
    required this.text,
    required this.height,
    required this.onSwipeCallback,
    this.padding = const EdgeInsets.fromLTRB(0, 0, 0, 0),
    this.swipeButtonColor = Colors.blue,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.white,
    this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    if (buttonTextStyle == null) {
      buttonTextStyle = TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w800, color: Colors.white);
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: Color(0xff2575AE), width: 3),
                borderRadius: BorderRadius.circular(height / 2)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.50,
                  0,
                  MediaQuery.of(context).size.width * 0.050,
                  0),
              child: new Center(
                child: Text(
                  widget.containerText,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 5.5, 8, 6),
            child: Container(
              child: SwipeableWidget(
                width: 400,
                height: MediaQuery.of(context).size.height * 0.052,
                swipePercentageNeeded: widget.swipePercentageNeeded == null
                    ? 0.60
                    : widget.swipePercentageNeeded,
                screenSize: MediaQuery.of(context).size.width -
                    (padding.right + padding.left),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: _buildContent(),
                  ),
                  height: MediaQuery.of(context).size.height * 0.050,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: swipeButtonColor,
                      borderRadius: BorderRadius.circular(30)),
                ),
                onSwipeCallback: onSwipeCallback,
                onSwipeStartcallback: (val, conVal) {
                  print("isGrate $conVal");

                  SchedulerBinding.instance!
                      .addPostFrameCallback((_) => setState(() {
                            isSwiping = val;
                            opacityVal = 1 - conVal;
                          }));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.only(left: height / 2),
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildContent() {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.center,
          child: AnimatedOpacity(
            opacity: (opacityVal - 0.2).isNegative ? 0.0 : (opacityVal - 0.2),
            duration: Duration(milliseconds: 10),
            child: Text(
              "Swipe",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
        // Align(
        //   alignment: AlignmentDirectional.center,
        //   child: AnimatedOpacity(
        //     opacity: (opacityVal - 0.4).isNegative ? 0.0 : (opacityVal - 0.4),
        //     duration: Duration(milliseconds: 10),
        //     child: Icon(
        //       Icons.chevron_right,
        //       color: iconColor,
        //       size: height * 0.6,
        //     ),
        //   ),
        // ),
        Align(
          alignment: Alignment.center,
          child: isSwiping
              ? _buildText()
              : Container(
                  width: 0,
                  height: 0,
                ),
        )
      ],
    );
  }
}
