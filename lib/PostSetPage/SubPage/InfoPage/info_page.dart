import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/PostSetPage/post_set_page.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/freeforum.dart';
import 'package:flutter_app/state.dart';

class InfoPage extends StatefulWidget {
  final List<Board> boardList;
  InfoPage({this.boardList});

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  ScrollController scrollController = ScrollController();
  double elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.offset > 0) {
        if (elevation == 0.0) {
          setState(() {
            elevation = 3.0;
          });
        }
      } else {
        if (elevation == 3.0) {
          setState(() {
            elevation = 0.0;
          });
        }
      }
    });
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0.0,
          elevation: elevation,
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              // for (var i in widget.boardList) BoxWidget(board: i)

              //코드 꺼낸거
              BoxWidget(
                board: Board(
                    title: "인기 게시물",
                    titleType: moreinfoTitle,
                    contentType: contentWithTitle,
                    contents: popularContentsSample),
              ),
              BoxWidget(
                board: Board(
                    title: "정보게시판",
                    titleType: moreinfoTitle,
                    contentType: contentWithDate,
                    contents: infoContentsSample),
              )
            ],
          ),
        ));
  }

//  링크 연결하려면 여기서 바꾸면 가능
  moreinfoTitle(Board item) {
    return InkWell(
      onTap: () {
        print("click");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => freeforum()),
              // builder: ((context) => PostSetPage()),
            ));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "더 보기",
                  style: TextStyle(color: mainColor),
                ),
                Icon(
                  CupertinoIcons.rectangle_fill_on_rectangle_fill,
                  size: 15,
                  color: mainColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
