import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/Widget/board_box_widget.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/Widget/down_box_widget.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/search_page.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/freeforum.dart';
import 'package:flutter_app/state.dart';
import 'package:get/get.dart';

class MyBoardPage extends StatefulWidget {
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<MyBoardPage> {
  ScrollController scrollController = ScrollController();
  double elevation = 0.0;

  searchWidget() {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: ((context) => SearchPage()),
        //     ));
        // Get.to(SearchPage());
      },
      child: Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: borderColor, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

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
        toolbarHeight: 0.1,
        elevation: elevation,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            DownBoxWidget(
              title: "계정",
              boardList: mypageSample,
            ),
            // BoardBoxWidget(
            //   boardList: secondBoardSample,
            //   widgetType: 1,
            // ),
            DownBoxWidget(
              title: "커뮤니티",
              boardList: secondBoardSample,
            ),
            // BoardBoxWidget(
            //   boardList: firstBoardSample,
            //   widgetType: 0,
            // ),
            DownBoxWidget(
              title: "기타",
              boardList: promotionSpreadBoardSample,
            ),
          ],
        ),
      ),
    );
  }
}
