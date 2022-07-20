import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/SubPage/board_list_page.dart';
import 'package:flutter_app/HomePage/Widget/top_bottons_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_list_widget.dart';
// import 'package:flutter_app/HomePage/Widget/top_list_widget.dart';
// import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/search_page.dart';
import 'package:flutter_app/PostSetPage/post_set_page.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/Utils/boastforunm.dart';
import 'package:flutter_app/Utils/jobhuntingforum.dart';
import 'package:flutter_app/centerPage.dart';
import 'package:flutter_app/freeforum.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/state.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8);
  ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0,
  );
  final List<dynamic> items = [1, 2, 3, 4, 5, 6, 7, 8];
  double elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.offset > 0) {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: elevation,
          // titleSpacing: 10,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(left: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/bs01_sem_00.jpg',
                    width: 35,
                  ),
                  SizedBox(width: 7),
                  Text(
                    "SM UCC",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // Text(
                  //   "컴퓨터학부",
                  //   style: TextStyle(
                  //     fontSize: 10,
                  //     fontWeight: FontWeight.bold,
                  //     color: Color.fromRGBO(0, 93, 170, 1),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
          actions: [
            circleIconButton(
              CupertinoIcons.search_circle,
              Colors.white,
              56.0,
              28.0,
              mainColor,
              () {
                // search창 이동
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SearchPage()),
                    ));
              },
            ),
            // circleIconButton(Icons.person_outline_rounded, Colors.white, 56.0,
            //     28.0, Colors.black, () {}),
            SizedBox(
              width: 5,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            SizedBox(
              // width: 300,
              child: Image.asset('assets/images/semyung2.jpg'),
            ),
            TopButtonsWidget(),
            TopListWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   child: Image.asset('assets/images/recuritment.jpg'),
                        // ),
                        ElevatedButton(
                          child: const Text('학번,나이, 성별에 상관없이 자유롭게 소통하고 싶다면?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFABDCFF),
                            maximumSize: const Size(500, 70),
                            minimumSize: const Size(500, 70),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => freeforum()),
                                ));
                          },
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        ElevatedButton(
                          child: const Text(
                              '팀 프로젝트 하면서 코딩실력을 쌓고 싶은데 인원이 부족하다구요?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF71C1FF),
                            maximumSize: const Size(500, 70),
                            minimumSize: const Size(500, 70),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => jobhuntingforum()),
                                ));
                          },
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        ElevatedButton(
                          child: const Text(
                              '내가 만든 개인/팀 프로젝트를 학부생 친구들에게 공유하고 싶다면?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF1D6FA3),
                            maximumSize: const Size(500, 70),
                            minimumSize: const Size(500, 70),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => boastforunm()),
                                ));
                          },
                        ),
                      ]),
                ),
              ],
            ))
            // BoxWidget(
            //   board: Board(
            //     title: " SM UCC 인기 글",
            //     // titleType: morefreeTitle,
            //     titleType: normalTitle,
            //     contentType: contentWithAnonymous,
            //     contents: realTimeContentsSample,
            //   ),
            // ),
            // BoxWidget(
            //   board: Board(
            //     title: "자유 게시판",
            //     titleType: morefreeTitle,
            //     contentType: contentWithDate,
            //     contents: cpaContentsSample,
            //     // icon: Icon(
            //     //   CupertinoIcons.rectangle_fill_on_rectangle_fill,
            //     //   size: 15,
            //     //   color: mainColor,
            //     // ),
            //   ),
            // )
            // for (var i in homePageBoardSample)
            //   BoxWidget(
            //     board: i,
            //   )
          ],
        ),
      ),
    );
  }

  morefreeTitle(Board item) {
    return InkWell(
      onTap: () {
        print("freeclick");
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

  normalTitle(Board item) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(15),
      child: Text(
        item.title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
