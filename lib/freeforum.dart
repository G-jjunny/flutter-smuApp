import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/state.dart';
import 'package:flutter_app/state.dart';
import 'package:get/get.dart';

class freeforum extends StatefulWidget {
  // const freeforum({ Key? key }) : super(key: key);

  @override
  State<freeforum> createState() => _freeforumState();
}

class _freeforumState extends State<freeforum> {
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
                    "자유게시판",
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            ),
            BoxWidget(
              board: Board(
                titleType: nonTitle,
                contentType: contentWithAnonymous,
                contents: freeforunmcontents,
              ),
            ),
            // BoxWidget(
            //     board: Board(
            //   titleType: nonTitle,
            //   contentType: contentWithAnonymous,
            //   contents: realTimeContentsSample,
            // )),
            // BoxWidget(
            //     board: Board(
            //   titleType: nonTitle,
            //   contentType: contentWithAnonymous,
            //   contents: realTimeContentsSample,
            // )),
            // BoxWidget(
            //     board: Board(
            //   titleType: nonTitle,
            //   contentType: contentWithAnonymous,
            //   contents: realTimeContentsSample,
            // )),
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
