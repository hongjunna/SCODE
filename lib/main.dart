import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scode/GetMaterialApp.dart';
import 'package:scode/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Gsans_KR',
        ),
        home: LandingPage(),
    );
  }
}

