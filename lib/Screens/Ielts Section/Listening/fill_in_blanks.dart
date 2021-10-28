// // import 'dart:io';

// // import 'package:auto_size_text/auto_size_text.dart';
// // import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
// // import 'package:esooul/Screens/Home/home.dart';
// // import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
// // import 'package:esooul/Screens/Report/Report.dart';
// // import 'package:esooul/Widgets/dialog.dart';
// // import 'package:esooul/Widgets/header.dart';
// // import 'package:esooul/Widgets/loading_animation.dart';
// // import 'package:esooul/Widgets/noData_msg.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:path/path.dart';
// // import 'package:slide_button/slide_button.dart';
// // import '../IELTS Home/ielts_widget.dart';

// // class FillInBlanks extends StatefulWidget {
// //   @override
// //   _FillInBlanksState createState() => _FillInBlanksState();
// // }

// // class _FillInBlanksState extends State<FillInBlanks> {
// //   @override
// //   void dispose() {
// //     // _pageManager.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Container(
// //         child: Column(
// //           children: [
// //             Header(btntext: 'Listening Test'),
// //             SizedBox(
// //               height: MediaQuery.of(context).size.height * .01,
// //             ),
// //             Container(
// //               // padding: EdgeInsets.symmetric(horizontal: 25),
// //               width: MediaQuery.of(context).size.width * .95,
// //               child: Container(
// //                 // color: Colors.yellow,
// //                 height: MediaQuery.of(context).size.height * .7,
// //                 child: SingleChildScrollView(
// //                   child: Column(
// //                     children: [
// //                       Container(
// //                         width: MediaQuery.of(context).size.width * 0.9,
// //                         child: AutoSizeText(
// //                           "Listen voice carefully and write correct answer",
// //                           style: TextStyle(color: Color(0xff196C7E)),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: MediaQuery.of(context).size.height * .02,
// //                       ),
// //                       // audioTile(context),
// //                       Padding(
// //                         padding: const EdgeInsets.only(top: 15),
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Text(
// //                               "write the correct answer",
// //                               style: TextStyle(color: Color(0xff196C7E)),
// //                             ),
// //                           ],
// //                         ),
// //                       ),

// //                       SizedBox(
// //                         height: MediaQuery.of(context).size.height * .02,
// //                       ),
// //                       // listCard(context,1,''),
// //                       Image.asset('assets/png/audio.png'),
// //                       Image.asset('assets/png/test1.PNG'),
// //                       Image.asset('assets/png/test2.PNG'),
// //                       Image.asset('assets/png/test3.PNG'),
// //                       Image.asset('assets/png/test4.PNG'),
// //                       Image.asset('assets/png/test5.PNG'),

// //                       Container(
// //                         height: MediaQuery.of(context).size.height * .05,
// //                         child: ElevatedButton(
// //                           onPressed: () {
// //                             Navigator.of(context).push(MaterialPageRoute(
// //                                 builder: (context) => Report(
// //                                     total: 40,
// //                                     pass: 0,
// //                                     fail: 0,
// //                                     attemped: 0,
// //                                     notAttemped: 40)));
// //                           },
// //                           child: Text(
// //                             'Submit',
// //                             style: TextStyle(fontWeight: FontWeight.bold),
// //                           ),
// //                           style: ElevatedButton.styleFrom(
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius:
// //                                   BorderRadius.circular(12), // <-- Radius
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: MediaQuery.of(context).size.height * .02,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget listCard(
// //     BuildContext context,
// //     count,
// //     question,
// //   ) {
// //     return Container(
// //       margin: EdgeInsets.symmetric(
// //           vertical: MediaQuery.of(context).size.height * 0.02),
// //       // color: Colors.green,
// //       child: Column(
// //         children: [
// //           Wrap(
// //             children: [
// //               Text(
// //                 "Q:$count",
// //                 style:
// //                     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
// //               ),
// //             ],
// //           ),
// //           SizedBox(
// //             height: 10,
// //           ),
// //           // Html(data: question),
// //           Row(
// //             children: [
// //               Text(
// //                 "Answer:______________",
// //                 style:
// //                     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
// //               ),
// //               SizedBox(
// //                 width: MediaQuery.of(context).size.width * 0.02,
// //               ),
// //               SizedBox(
// //                 width: MediaQuery.of(context).size.width * 0.05,
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Widget audioTile(BuildContext context) {
// //   //   return Container(
// //   //     height: MediaQuery.of(context).size.height * 0.15,
// //   //     margin: EdgeInsets.symmetric(
// //   //         horizontal: MediaQuery.of(context).size.width * 0.05),
// //   //     // width: MediaQuery.of(context).size.width * 0.5,
// //   //     decoration: BoxDecoration(
// //   //       borderRadius: BorderRadius.circular(20),
// //   //       color: Colors.white,
// //   //       boxShadow: [
// //   //         BoxShadow(
// //   //           color: Colors.grey.withOpacity(0.5),
// //   //           spreadRadius: 5,
// //   //           blurRadius: 7,
// //   //           offset: Offset(0, 3), // changes position of shadow
// //   //         ),
// //   //       ],
// //   //     ),
// //   //     child: Padding(
// //   //       padding: const EdgeInsets.all(20.0),
// //   //       child: Column(
// //   //         children: [
// //   //           Row(
// //   //             mainAxisAlignment: MainAxisAlignment.start,
// //   //             children: [
// //   //               Text("Audio",
// //   //                   style: TextStyle(
// //   //                     color: Colors.black,
// //   //                     fontWeight: FontWeight.bold,
// //   //                   )),
// //   //             ],
// //   //           ),
// //   //           SizedBox(
// //   //             height: 5,
// //   //           ),
// //   //           ValueListenableBuilder<ProgressBarState>(
// //   //             valueListenable: _pageManager.progressNotifier,
// //   //             builder: (_, value, __) {
// //   //               return ProgressBar(
// //   //                 progress: value.current,
// //   //                 buffered: value.buffered,
// //   //                 total: value.total,
// //   //                 progressBarColor: Colors.blue,
// //   //                 baseBarColor: Colors.blue.withOpacity(0.24),
// //   //                 bufferedBarColor: Colors.blue.withOpacity(0.24),
// //   //                 thumbColor: Colors.blue,
// //   //                 thumbGlowColor: Colors.blue.withOpacity(0.24),
// //   //                 barHeight: 9.0,
// //   //                 thumbRadius: 9.0,
// //   //                 onSeek: _pageManager.seek,
// //   //                 timeLabelTextStyle: TextStyle(color: Colors.black),
// //   //               );
// //   //             },
// //   //           ),
// //   //           ValueListenableBuilder<ButtonState>(
// //   //             valueListenable: _pageManager.buttonNotifier,
// //   //             builder: (_, value, __) {
// //   //               switch (value) {
// //   //                 case ButtonState.loading:
// //   //                   return Container(
// //   //                     margin: EdgeInsets.all(8.0),
// //   //                     width: 32.0,
// //   //                     height: 32.0,
// //   //                     child: CircularProgressIndicator(),
// //   //                   );
// //   //                 case ButtonState.paused:
// //   //                   return IconButton(
// //   //                     icon: Icon(
// //   //                       Icons.play_arrow,
// //   //                       color: Colors.blue,
// //   //                     ),
// //   //                     iconSize: 32.0,
// //   //                     onPressed: () {
// //   //                       if (_extension != '.mp3' || _extension == null) {
// //   //                         return CommomWidget().okayAlertDialog(
// //   //                             context, "Fail", "Audio File is not supported");
// //   //                       } else {
// //   //                         _pageManager.play();
// //   //                       }
// //   //                     },
// //   //                   );
// //   //                 case ButtonState.playing:
// //   //                   return IconButton(
// //   //                     icon: Icon(Icons.pause, color: Colors.blue),
// //   //                     iconSize: 32.0,
// //   //                     onPressed: () {
// //   //                       _pageManager.pause;
// //   //                     },
// //   //                   );
// //   //               }
// //   //             },
// //   //           ),
// //   //         ],
// //   //       ),
// //   //     ),
// //   //   );
// //   // }

// //   // List myTextController = [
// //   //   textController0,
// //   // ];
// // }

// // @override
// // Widget build(BuildContext context) {
// //   // TODO: implement build
// //   throw UnimplementedError();
// // }



























// import 'dart:io';

// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
// import 'package:esooul/Screens/Home/home.dart';
// import 'package:esooul/Screens/Ielts%20Section/Listening/audio_manager.dart';
// import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
// import 'package:esooul/Screens/Report/Report.dart';
// import 'package:esooul/Widgets/dialog.dart';
// import 'package:esooul/Widgets/header.dart';
// import 'package:esooul/Widgets/loading_animation.dart';
// import 'package:esooul/Widgets/noData_msg.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/shims/dart_ui_real.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:path/path.dart';
// import 'package:slide_button/slide_button.dart';
// import '../IELTS Home/ielts_widget.dart';

// class FillInBlanks extends StatefulWidget {
//   final audio;
//   final questions;

//   const FillInBlanks({@required this.audio, @required this.questions});

//   @override
//   _FillInBlanksState createState() => _FillInBlanksState();
// }

// class _FillInBlanksState extends State<FillInBlanks> {
//   late final PageManager _pageManager;
//   var _extension;
//   late List<TextEditingController> _controller;
//   int correctAns = 0;
//   int falseAns = 0;
//   int attemped = 0;
//   int notAttemped = 0;
//   var ans;
//   @override
//   void initState() {
//     super.initState();
//     print("Audio : ${widget.audio} ");
//     _pageManager = PageManager(widget.audio);

//     final File _file = new File(widget.audio);
//     final _filename = basename(widget.audio);
//     _extension = extension(widget.audio);
//     final _nameWithoutExtension = basenameWithoutExtension(widget.audio);
//     print('Filename: $_filename');
//     print('Filename without extension: $_nameWithoutExtension');
//     print('Extension: $_extension');

//     setState(() {
//       correctAns = 0;
//       falseAns = 0;
//       attemped = 0;
//       notAttemped = 0;
//     });

//     _controller = List.generate(
//         widget.questions.length == null ? 0 : widget.questions.length,
//         (i) => TextEditingController());

//     ans = List.generate(
//         widget.questions.length == null ? 0 : widget.questions.length,
//         (i) => ans);
//   }

//   generateResult(BuildContext context, ans) {
//     for (var i = 0; i < widget.questions.length; i++) {
//       if (_controller[i].text == '') {
//         setState(() {
//           notAttemped = notAttemped + 1;
//         });
//       } else {
//         setState(() {
//           attemped = attemped + 1;
//         });

//         if (widget.questions[i].answer == _controller[i].text) {
//           print("True");
//           setState(() {
//             correctAns = correctAns + 1;
//           });
//           print(ans[0]);
//         } else {
//           setState(() {
//             falseAns = falseAns + 1;
//           });
//           print(ans[0]);
//         }
//       }
//     }

//     print('correctAns: $correctAns');
//     print('falseAns: $falseAns');
//     print('notAttemped: $notAttemped');
//     print('attemped: $attemped');

//     Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => Report(
//             total:
//                 widget.questions.length == null ? 0 : widget.questions.length,
//             pass: correctAns,
//             fail: falseAns,
//             attemped: attemped,
//             notAttemped: notAttemped)));
//   }

//   @override
//   void dispose() {
//     _pageManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Column(
//           children: [
//             Header(btntext: 'Listening Test'),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .01,
//             ),
//             Container(
//               // padding: EdgeInsets.symmetric(horizontal: 25),
//               width: MediaQuery.of(context).size.width * .95,
//               child: SingleChildScrollView(
//                 child: Container(
//                   // color: Colors.yellow,
//                   height: MediaQuery.of(context).size.height * .7,
//                   child: ListView(
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.9,
//                         child: AutoSizeText(
//                           "Listen voice carefully and write correct answer",
//                           style: TextStyle(color: Color(0xff196C7E)),
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * .02,
//                       ),
//                       audioTile(context),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 15),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "write the correct answer",
//                               style: TextStyle(color: Color(0xff196C7E)),
//                             ),
//                           ],
//                         ),
//                       ),
//                   loading == true
//                           ? LoadingBounceAnimation(context)
//                           : widget.questions.length <= 0
//                               ? noDataMsg(context)
//                               listCard(context, 1,'ksfjklasla', ans),
//                               // : ListView(
//                               //     shrinkWrap: true,
//                               //     physics: ClampingScrollPhysics(),
//                               //     children: [
//                               //       ListView.builder(
//                               //         shrinkWrap: true,
//                               //         physics: ClampingScrollPhysics(),
//                               //         itemCount: widget.questions.length == null
//                               //             ? 0
//                               //             : widget.questions.length,
//                               //         itemBuilder: (context, i) {
//                               //           return listCard(context, i,
//                               //               widget.questions[i].question, ans);
//                               //         },
//                               //       )
//                               //     ],
//                               //   ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * .02,
//                       ),
//                       Container(
//                         height: MediaQuery.of(context).size.height * .05,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             generateResult(context, ans);
//                           },
//                           child: Text(
//                             'Submit',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.circular(12), // <-- Radius
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * .02,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget listCard(BuildContext context, count, question, ans) {
//     return Container(
//       margin: EdgeInsets.symmetric(
//           vertical: MediaQuery.of(context).size.height * 0.02),
//       // color: Colors.green,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 "Q:${count + 1}",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Html(data: question),
//           Row(
//             children: [
//               Text(
//                 "Answer:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.02,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.4,
//                 child: TextFormField(
//                   controller: _controller[count],
//                   // onChanged: (val) {
//                   //   print(val);
//                   // },
//                   decoration: InputDecoration(
//                     border: UnderlineInputBorder(),

//                     // hintText: 'Enter a search term',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.05,
//               ),
//               // ans == "true"
//               //     ? Icon(
//               //         Icons.close,
//               //         color: Colors.red,
//               //       )
//               //     : Icon(
//               //         Icons.done,
//               //         color: Colors.green,
//               //       )
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget audioTile(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.15,
//       margin: EdgeInsets.symmetric(
//           horizontal: MediaQuery.of(context).size.width * 0.05),
//       // width: MediaQuery.of(context).size.width * 0.5,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("Audio",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             ValueListenableBuilder<ProgressBarState>(
//               valueListenable: _pageManager.progressNotifier,
//               builder: (_, value, __) {
//                 return ProgressBar(
//                   progress: value.current,
//                   buffered: value.buffered,
//                   total: value.total,
//                   progressBarColor: Colors.blue,
//                   baseBarColor: Colors.blue.withOpacity(0.24),
//                   bufferedBarColor: Colors.blue.withOpacity(0.24),
//                   thumbColor: Colors.blue,
//                   thumbGlowColor: Colors.blue.withOpacity(0.24),
//                   barHeight: 9.0,
//                   thumbRadius: 9.0,
//                   onSeek: _pageManager.seek,
//                   timeLabelTextStyle: TextStyle(color: Colors.black),
//                 );
//               },
//             ),
//             ValueListenableBuilder<ButtonState>(
//               valueListenable: _pageManager.buttonNotifier,
//               builder: (_, value, __) {
//                 switch (value) {
//                   case ButtonState.loading:
//                     return Container(
//                       margin: EdgeInsets.all(8.0),
//                       width: 32.0,
//                       height: 32.0,
//                       child: CircularProgressIndicator(),
//                     );
//                   case ButtonState.paused:
//                     return IconButton(
//                       icon: Icon(
//                         Icons.play_arrow,
//                         color: Colors.blue,
//                       ),
//                       iconSize: 32.0,
//                       onPressed: () {
//                         if (_extension != '.mp3' || _extension == null) {
//                           return CommomWidget().okayAlertDialog(
//                               context, "Fail", "Audio File is not supported");
//                         } else {
//                           _pageManager.play();
//                         }
//                       },
//                     );
//                   case ButtonState.playing:
//                     return IconButton(
//                       icon: Icon(Icons.pause, color: Colors.blue),
//                       iconSize: 32.0,
//                       onPressed: () {
//                         _pageManager.pause;
//                       },
//                     );
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // List myTextController = [
//   //   textController0,
//   // ];
// }
