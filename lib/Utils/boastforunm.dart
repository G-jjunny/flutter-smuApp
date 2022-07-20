import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/state.dart';
import 'package:flutter_app/state.dart';
import 'package:get/get.dart';

class boastforunm extends StatefulWidget {
  // const freeforum({ Key? key }) : super(key: key);

  @override
  State<boastforunm> createState() => _boastforunmState();
}

class _boastforunmState extends State<boastforunm> {
  final formKey = GlobalKey<FormState>();
  String title = "";
  String contents = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          //automaticallyImplyLeading: false,
          // elevation: elevation,
          // titleSpacing: 10,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 7),
                  Text(
                    "자랑게시판",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Form(
                key: this.formKey,
                child: Column(
                  children: [
                    renderTextFormField(
                        label: '제목',
                        onSaved: (val) {
                          setState(() {
                            this.title = val;
                          });
                        },
                        validator: (val) {
                          if (val.length < 1) {
                            return '제목을 입력하세요';
                          }
                          return null;
                        }),
                    renderTextFormField(
                      label: '내용',
                      onSaved: (val) {
                        setState(() {
                          this.contents = val;
                        });
                      },
                      validator: (val) {
                        if (val.length < 1) {
                          return '내용을 입력하세요';
                        }
                        return null;
                      },
                    ),
                    rederSubmitButton(),
                    // renderStates(),
                  ],
                ),
              ),
            ),
            BoxWidget(
                board: Board(
              titleType: nonTitle,
              contentType: contentWithkim,
              contents: boastforunmcontents,s
            )),
          ],
        ),
      ),
    );
  }

  renderStates() {
    return Column(
      children: [
        Text('title : $title'),
        Text('contents : $contents'),
      ],
    );
  }

  rederSubmitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(CupertinoIcons.create),
          color: mainColor,
          onPressed: () {
            //여기서 저장

            //만약 validation 다 통과하면 true리턴
            if (this.formKey.currentState.validate()) {
              this.formKey.currentState.save();

              Get.snackbar('작성 완료', '게시물이 저장되었습니다!');
            }
          },
        ),
      ],
    );
  }

  renderTextFormField({
    @required String label,
    @required FormFieldSetter onSaved,
    @required FormFieldValidator validator,
  }) {
    assert(label != null);
    assert(onSaved != null);
    assert(validator != null);

    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        TextFormField(
          onSaved: onSaved,
          validator: validator,
        )
      ],
    );
  }
}
