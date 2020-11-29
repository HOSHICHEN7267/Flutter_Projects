import 'package:flutter/material.dart';
import 'profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Uhome.dart';

bool logined;
int GetUserNum;
String _StorageLogined = "Logined";
String _StorageUserNum = "UserNum";

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '全台大學\n入學攻略',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UniversityPage(),
    );
  }
}