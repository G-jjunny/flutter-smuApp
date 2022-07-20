import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/Login_page.dart';
import 'package:flutter_app/dbhelper/mongodb.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:get/get.dart';
//import 'home_screen.dart';
import 'Login_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await MongoDatabase.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMU COMPUTER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new HomeScreen(),
      home: new LoginPage(),
    );
  }
}
