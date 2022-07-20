// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../state.dart';

class TopButtonsWidget extends StatelessWidget {
  List<dynamic> item = [
    "홈페이지",
    "포털",
    "학사 공지",
    "학사 일정",
  ];

// 이미지 리스트 - 업로딩 할 이미지 있으면 여기로.
  final List<dynamic> img_sem = [
    Image.asset(
      "assets/images/bs01_sem_00.jpg",
      // width: 60,
    ),
    Image.asset(
      "assets/images/potal_2.jpg",
      // width: 60,
    ),
    Image.asset(
      "assets/images/bs01_sem_01.jpg",
      // width: 60,
    ),
    Image.asset(
      "assets/images/small_logo.png",
      // width: 60,
    )
  ];

  final List<dynamic> url_list = [
    Uri.parse('http://www.semyung.ac.kr'),
    Uri.parse('http://www.semyung.ac.kr/intro/smu_portal.html'),
    Uri.parse(
        'http://www.semyung.ac.kr/prog/vwBoard/bbs06/kor/sub04_01/list.do'),
    Uri.parse(
        'http://www.semyung.ac.kr/prog/schedule/kor/sub04_02/123/haksa.do'),
  ];
  // _LaunchURL(url) async {
  //   const url = 'https://setopia.semyung.ac.kr';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      // color: Colors.red,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () async {
                    // const url = 'https://google.com.br';
                    // if (await canLaunch(url)) {
                    //   await launch(url);
                    // } else {
                    //   // throw 'Could not launch $url';
                    // }
                    final url = url_list[index];
                    if (await canLaunchUrl(url)) {
                      // final bool succeeded = await launch(url,
                      //     forceSafariVC: false, universalLinksOnly: true);
                      // if (!succeeded) {
                      //   await launch(url, forceSafariVC: true);
                      // }
                      launchUrl(url, mode: LaunchMode.externalApplication);
                    } else {
                      // throw 'Could not launch $url';
                    }
                  },
                  iconSize: 60,
                  icon: CircleAvatar(
                    child: img_sem[index],
                    radius: 30,
                    backgroundColor: greyColor,
                  ),
                ),
                // Container(
                //   child: CircleAvatar(
                //     child: img_sem[index],
                //     radius: 30,
                //     backgroundColor: greyColor,
                //   ),
                // ),
                // SizedBox(
                //   height: 1,
                // ),
                Container(
                  // color: Colors.blue,
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(
                    item[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
        // {
        //   return SizedBox(
        //     child: Container(
        //       color: Colors.blue,
        //       width: 20,
        //     ),
        //   );
        // }
      ),
    );
  }
}
