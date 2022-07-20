import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Function.dart';
import '../../../../state.dart';

class SecDownBoxWidget extends StatefulWidget {
  final List<Board> boardList;
  final String title;

  SecDownBoxWidget({this.boardList, this.title});

  @override
  _DownBoxWidgetState createState() => _DownBoxWidgetState();
}

class _DownBoxWidgetState extends State<SecDownBoxWidget> {
  bool isSpread = false;

  @override
  Widget build(BuildContext context) {
    String subTitle = '';
    for (var i in widget.boardList) {
      subTitle += i.title;
      if (i != widget.boardList.last) {
        subTitle += ", ";
      }
    }
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: mainColor),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 누르면 접히는기능 여기 짜르면 없어짐
          InkWell(
            onTap: () {
              setState(() {
                if (isSpread)
                  isSpread = false;
                else
                  isSpread = true;
              });
            },
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Text(
                      widget.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    isSpread ? subTitle : "",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                  // Icon(
                  //   isSpread
                  //       // ? Icons.keyboard_arrow_down_rounded
                  //       ? CupertinoIcons.sort_down
                  //       : CupertinoIcons.sort_up,
                  //   size: 15,
                  //   color: mainColor,
                  // )
                ],
              ),
            ),
          ),
          isSpread
              ? SizedBox()
              : Column(
                  children: [
                    for (var i in widget.boardList) pinWithText(i, () {})
                  ],
                )
        ],
      ),
    );
  }
}