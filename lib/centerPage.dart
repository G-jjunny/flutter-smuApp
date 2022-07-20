import 'package:flutter/material.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/board_page.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/myboard%20.dart';
import 'package:flutter_app/Utils/centerboard.dart';
import 'package:flutter_app/state.dart';

class centerPage extends StatefulWidget {
  @override
  State<centerPage> createState() => _centerPageState();
}

class _centerPageState extends State<centerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          // elevation: elevation,
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
                ],
              ),
            ],
          ),
        ),
      ),
      body: centerboard(),
    );
  }
}
