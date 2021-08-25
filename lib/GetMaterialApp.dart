import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scode/mainpage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Get.offAll(Main());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("SCODE",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Gsans_KR',
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ), textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 225, 0, 225),
            ),
            Text("SQ Code Recommendation\nSystem for Controllers",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Gsans_KR',
                  fontSize: 11,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  color: Colors.white70
              ), textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            ),
            Text("ⓒ2021 JUNLAB",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Gsans_KR',
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Colors.white70
              ), textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
            ),
          ],
        )
    );
  }
}
