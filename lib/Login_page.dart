import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/state.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

  String _ID;
  String _password;

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print('Form is valid ID: $_ID, password: $_password');
    } else {
      print('Form is invalid ID: $_ID, password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        // elevation: elevation,
        // titleSpacing: 10,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(left: 5)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     // Image.asset(
            //     //   'assets/images/bs01_sem_00.jpg',
            //     //   width: 35,
            //     // ),
            //     // SizedBox(width: 7),
            //     // Text(
            //     //   "Login Page",
            //     //   style: TextStyle(
            //     //     fontSize: 18,
            //     //     fontWeight: FontWeight.bold,
            //     //     color: Colors.black,
            //     //   ),
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
      body: new Container(
        padding: EdgeInsets.all(16),
        child: new Form(
          key: formKey,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset(
                      'assets/images/bs01_sem_00.jpg',
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      '지금 SM UCC를 시작하세요',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: 'ID'),
                validator: (value) =>
                    value.isEmpty ? 'ID can\'t be empty' : null,
                onSaved: (value) => _ID = value,
              ),
              new TextFormField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
                validator: (value) =>
                    value.isEmpty ? 'Password can\'t be empty' : null,
                onSaved: (value) => _password = value,
              ),
              SizedBox(
                height: 5,
              ),
              new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                  ),
                  child: Text(
                    '로그인',
                    style: new TextStyle(
                        fontSize: 20.0,
                        // backgroundColor: mainColor,
                        color: Colors.white),
                  ),
                  onPressed:
                      // validateAndSave,
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => HomeScreen()),
                        ));
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SM UCC에 처음이신가요?",
                  ),
                  TextButton(
                      onPressed: () {
                        // 회원가입 링크
                      },
                      child: Text(
                        "회원가입",
                        style: TextStyle(color: mainColor),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
