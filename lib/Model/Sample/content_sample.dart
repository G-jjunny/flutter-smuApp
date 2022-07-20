import '../model.dart';

List<Content> popularContentsSample = [
  Content(
      title: "인기 게시물 1",
      boardName: "취업·진로",
      content: "[내용]\n",
      like: 22,
      comments: 15),
  Content(boardName: "게시물 이름", content: "게시물 2", like: 34, comments: 6),
];

List<Content> infoContentsSample = [
  Content(
      content: "정보게시글1",
      like: 5,
      comments: 18,
      date: DateTime.parse("2021-06-25 15:36:00")),
];

List<Content> officialContentsSample = [
  Content(
      content: "홍보게시글1",
      like: 0,
      comments: 4,
      date: DateTime.parse("2021-06-28 19:02:00")),
];
//메인에 있는 게시물 샘플
List<Content> cpaContentsSample = [
  Content(
      content: "게시글1",
      like: 0,
      comments: 2,
      date: DateTime.parse("2021-06-28 03:06:00")),
];

List<Content> examContentsSample = [
  Content(
      content: "ㄲㄸ",
      like: 0,
      comments: 1,
      date: DateTime.parse("2021-06-28 15:26:00")),
  Content(
      content: "ㄸㄸㄸ",
      like: 0,
      comments: 0,
      date: DateTime.parse("2021-06-25 21:34:00")),
];

List<Content> taxContentsSample = [
  Content(
      content: "ㅃㅃ",
      like: 3,
      comments: 1,
      date: DateTime.parse("2021-03-09 20:07:00")),
];

List<Content> delegateContentsSample = [
  Content(
      content: "ㅁㄻㄹ",
      like: 1,
      comments: 2,
      date: DateTime.parse("2021-05-29 18:13:00")),
];

//홈 스크린에
List<Content> realTimeContentsSample = [
  Content(
      content: "실시간 인기 글",
      like: 12,
      comments: 17,
      boardName: "자유게시판",
      // title: "인기글 1",
      title: "인기글 1",
      date: DateTime.parse("2021-06-28 21:58:00")),
  Content(
      content: "인기 글 2",
      like: 109,
      comments: 30,
      boardName: "자유게시판",
      title: "인기글 2",
      date: DateTime.parse("2021-06-28 13:39:00")),
];
List<Content> freeforunmcontents = [
  Content(
      content: "자유게시판입니다.",
      like: 0,
      comments: 0,
      boardName: "자유게시판",
      title: "안녕하세요",
      date: DateTime.parse("2022-06-09 00:23:34")),
  Content(
      content: "테스트",
      like: 0,
      comments: 0,
      boardName: "자유게시판",
      title: "테스트",
      date: DateTime.parse("2022-06-07 18:11:13")),
];

List<Content> jobhuntingforunmcontents = [
  Content(
      content:
          "백엔드 2명\n프론트엔드 2명\n모집할 예정입니다.\n프로젝트 진행 시 사용할 기술\n\n백엔드 : java, spring, jpa, querydsl, nginx, docker, jenkins, aws, rdb",
      like: 0,
      comments: 0,
      boardName: "구인게시판",
      title: "여름방학기간동안 작업할 팀 프로젝트 인원 구합니다.",
      date: DateTime.parse("2022-06-07 18:11:41")),
];

List<Content> boastforunmcontents = [
  Content(
      content:
          "2022년 04월 15일(금) 충북바이오산업 혁신 연구성과 발표회 부문 \'정밀의료-의료기기 분야 캡스톤 디자인 경진대회\'에 참가하여 우수한 연구활동으로 우수상을 수상하였습니다.",
      like: 0,
      comments: 0,
      boardName: "자랑게시판",
      title: "ICES.Lab 지자체-대학 협력기반 지역혁신사업 캡스톤 경진대회 우수상 수상했습니다!",
      date: DateTime.parse("2022-06-07 18:15:32")),
  Content(
      content: "테스트",
      like: 0,
      comments: 0,
      boardName: "자랑게시판",
      title: "테스트",
      date: DateTime.parse("2022-06-07 18:13:00")),
];
//자유게시판에 내 프로필

List<Content> freeForumprofile = [];
