import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../state.dart';
import '../../Utils/custom_scroll_physics.dart';

class TopListWidget extends StatefulWidget {
  @override
  _TopListWidgetState createState() => _TopListWidgetState();
}

class _TopListWidgetState extends State<TopListWidget> {
  final _controller = ScrollController();
  final List<int> pages = List.generate(2, (index) => index);
  ScrollPhysics _physics;

  final List img_list = [
    Image.asset(
      "assets/images/recuritment1.jpg",
      // width: 400,
    ),
    Image.asset(
      "assets/images/recuritment2.jpg",
      // width: 200,
    )
  ];

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.position.haveDimensions && _physics == null) {
        setState(() {
          var dimension =
              _controller.position.maxScrollExtent / (pages.length - 1);
          _physics = CustomScrollPhysics(itemDimension: 310);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            physics: _physics,
            itemCount: pages.length,
            itemBuilder: (context, index) => Container(
                  child: img_list[index],
                  height: double.infinity,
                  width: 400,
                  margin: EdgeInsets.only(
                      left: index == 0 ? 15 : 5,
                      right: index == pages.length - 1 ? 15 : 5,
                      top: 5,
                      bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                )),
      ),
    );
  }
}
