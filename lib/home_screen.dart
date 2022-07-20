import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app/CampusPage/campus_page.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/PostSetPage/mypage.dart';
import 'package:flutter_app/PostSetPage/post_set_page.dart';
import 'package:flutter_app/centerPage.dart';
import 'package:flutter_app/freeforum.dart';
// import 'package:flutter_app/SchedulePage/schedule_page.dart';
import 'package:flutter_app/state.dart';
import 'NoticePage/notice_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> page = [
    HomePage(),
    // SchedulePage(),
    // NoticePage(),
    centerPage(),
    // PostSetPage(),
    MyPage()
    // CampusPage()
  ];

  bottomItem(icon, index) {
    return BottomNavigationBarItem(
      label: 'HOME',
      icon: Icon(
        icon,
        color: currentIndex == index ? mainColor : Colors.grey,
        size: 25.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          bottomItem(CupertinoIcons.house_fill, 0),
          // bottomItem(CupertinoIcons.captions_bubble, 1),
          // bottomItem(CupertinoIcons.create, 1),
          bottomItem(CupertinoIcons.list_bullet_below_rectangle, 1),
          bottomItem(CupertinoIcons.person, 2),
          // bottomItem(Icons.alternate_email_rounded, 4),
        ],
      ),
    );
  }
}
