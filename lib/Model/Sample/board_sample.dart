import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/state.dart';
import '../model.dart';

//마이페이지 샘플
List<Board> firstBoardSample = [
  Board(
    title: "내가 쓴 글",
    icon: Container(
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: mainColor,
          border: Border.all(color: mainColor, width: 1),
          borderRadius: BorderRadius.circular(3)),
      child: Icon(
        Icons.list_rounded,
        size: 18,
      ),
    ),
  ),
  Board(
      icon: iconBox(CupertinoIcons.ellipses_bubble, mainColor),
      title: "내가 댓글 단 글"),
  Board(
      icon: iconBox(
        CupertinoIcons.heart_solid,
        mainColor,
      ),
      title: "내가 좋아한글"),
];

List<Board> mypageSample = [
  Board(title: "닉네임 설정", isFavorite: false, hasNew: false),
  Board(title: "이메일 설정", isFavorite: false, hasNew: false),
  Board(title: "비밀번호 변경", isFavorite: false, hasNew: false)
];

List<Board> secondBoardSample = [
  Board(title: "내가 쓴 글", isFavorite: false, hasNew: false),
  Board(title: "내가 댓글 단 글", isFavorite: false, hasNew: false),
  Board(title: "내가 좋아한 글", isFavorite: false, hasNew: false),
  // Board(title: "자유게시판"),
  // Board(title: "구인게시판"),
  // Board(title: "자랑게시판"),
  // Board(title: "ㅃㅃㅃ", isFavorite: true, hasNew: true),
  // Board(title: "장터게시판", isFavorite: false, hasNew: true),
];
List<Board> centerfirstBoardSample = [
  Board(title: "자유게시판", isFavorite: false, hasNew: false),
  Board(title: "구인게시판", isFavorite: false, hasNew: false),
  Board(title: "자랑게시판", isFavorite: false, hasNew: false),
];

List<Board> centerSecondBoardSample = [
  Board(title: "공지사항", isFavorite: false, hasNew: false),
  Board(title: "건의사항", isFavorite: false, hasNew: false),
  Board(title: "학부 이모저모", isFavorite: false, hasNew: false),
];
// List<Board> thirdBoardSample = [
//   Board(
//       icon: iconBox(Icons.restaurant_rounded, Colors.orange), title: "오늘의 학식"),
// ];

//게시판 페이지 "진로"
List<Board> infoSpreadBoardSample = [
  // Board(title: "취업·진로", isFavorite: true, hasNew: true),
  Board(title: "취업·진로"),
];

//게시판 페이지 "기타"
List<Board> promotionSpreadBoardSample = [
  Board(title: "로그아웃", isFavorite: true, hasNew: false),
  Board(title: "회원탈퇴", isFavorite: true, hasNew: false),
  // Board(title: "로그아웃"),
  // Board(title: "회원탈퇴"),
];

// 공지사항 페이지
List<Board> infoBoardSample = [
  Board(
      title: "인기 게시물",
      titleType: moreTitle,
      contentType: contentWithTitle,
      contents: popularContentsSample),
  Board(
      title: "정보게시판",
      titleType: moreTitle,
      contentType: contentWithDate,
      contents: infoContentsSample),
  //Board(title: "취업·진로", titleType: 1, contentType: 2),
  //Board(title: "강의평가", titleType: 2, contentType: 3),
];

//건의사항 페이지
List<Board> promBoardSample = [
  Board(
      title: "인기 게시물",
      titleType: normalTitle,
      contentType: contentWithTitle,
      contents: popularContentsSample),
  // Board(title: "스터디", titleType: moreTitle, contentType: contentWithDate, contents: infoContentsSample),
  Board(
      title: "홍보게시판",
      titleType: moreTitle,
      contentType: contentWithDate,
      contents: officialContentsSample),
  Board(
      title: "동아리·학회",
      titleType: moreTitle,
      contentType: contentWithDate,
      contents: cpaContentsSample),
];

List<Board> groupBoardSample = [
  //Board(title: "전체 소식", titleType: normalTitle, contentType: boardNameWithContent, contents: allBoardSample),
];

List<Board> allBoardSample = [
  //Board(title: "총대의원회", contents: delegateContentsSample, hasNew: false),
];

List<Board> homePageBoardSample = [
  //Board(title: "즐겨찾는 게시판", titleType: moreTitle, contentType: boardNameWithContent, contents: favoriteBoardSample),

  //메인 페이지 샘플
  Board(
      title: " SM UCC 인기 글",
      titleType: normalTitle,
      contentType: contentWithAnonymous,
      contents: realTimeContentsSample),
  Board(
      title: "자유 게시판",
      titleType: moreTitle,
      contentType: contentWithDate,
      contents: cpaContentsSample),

  //Board(title: "판매 중인 책", titleType: 1, contentType: 1, contents: popularContentsSample),
];

List<Board> favoriteBoardSample = [
  // Board(title: "자유게시판", contents: delegateContentsSample, hasNew: false),
  // Board(title: "익명게시판", contents: delegateContentsSample, hasNew: false),
  // //Board(title: "시사·이슈", contents: delegateContentsSample, hasNew: false),
  // Board(title: "정보게시판", contents: delegateContentsSample, hasNew: false),
  // Board(title: "취업·진로", contents: delegateContentsSample, hasNew: false),
  // Board(title: "홍보게시판", contents: delegateContentsSample, hasNew: false),
];
