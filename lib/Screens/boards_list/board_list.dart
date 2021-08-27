import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/grade_list/grade_list.dart';
import 'package:esooul/Screens/boards_list/board_list_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectBoard extends StatefulWidget {
  var boardID;
  SelectBoard({Key? key, @required this.boardID}) : super(key: key);

  @override
  _SelectBoardState createState() => _SelectBoardState();
}

class _SelectBoardState extends State<SelectBoard> {
  late BoardListProvider _boardListProvider;
  var result;
  bool _loader = true;

  @override
  void initState() {
    super.initState();
    _boardListProvider = Provider.of<BoardListProvider>(context, listen: false);
    // _boardListProvider.getBoardList();
    // result = _boardListProvider.boardListData;
    getBoardList();
  }

  getBoardList() async {
    result = await _boardListProvider.getBoardList(widget.boardID);
    setState(() {
      _loader = false;
    });
    print('result: $result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header(
            btntext: 'Boards',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Punjab Board List",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _loader == true
                        ? Center(child: LoadingBounceAnimation(context))
                        : _boardListProvider.boardListData.isEmpty
                            ? noDataMsg(context)
                            : ListView(
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                children: [
                                  result == null
                                      ? noDataMsg(context)
                                      : ListView.builder(
                                          shrinkWrap: true,
                                          physics: ClampingScrollPhysics(),
                                          itemCount: result.length == null
                                              ? 0
                                              : result.length,
                                          itemBuilder: (context, i) {
                                            return _myContainer(
                                                result[i].title, result[i].id);
                                          })
                                ],
                              ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  _myContainer(String grade, boardsID) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GradeList(
                    educationalBoardsId: boardsID,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.075,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            shape: BoxShape.rectangle),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.035,
                decoration: BoxDecoration(
                  color: Color(0xff00B0D7),
                  borderRadius: BorderRadius.circular(50),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              grade,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
