import 'dart:async';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  static const backGround = 0xff0E0E0E;
  static const tittleBackGround = 0xff000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backGround),
      // appBar: PreferredSize(
      // preferredSize: Size.fromHeight(65.0),//앱바 사이즈 조정
      // child: SafeArea(child:
      // AppBar(title:
      // Text("SCODE SYSTEM",
      //   style: TextStyle(
      //   decoration: TextDecoration.none,
      //   fontSize: 21,
      //   color: Colors.white,
      // ),textAlign: TextAlign.center,),
      //   backgroundColor: const Color(tittleBackGround),
      // ),),),//이전 앱 바
      appBar:
      AppBar(
        elevation: 0,
        backgroundColor: const Color(tittleBackGround),
        toolbarHeight: 65,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'SCODE SYSTEM',
          style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Gsans_KR',
                fontWeight: FontWeight.w500,
                fontSize: 21,
                color: Colors.white,
                ),
          ),
        ),),//새로운 앱바
      body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("now making",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Gsans_KR',
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ), textAlign: TextAlign.center,
                  ),
                ],
              ),
      ),
    );
  }
}
