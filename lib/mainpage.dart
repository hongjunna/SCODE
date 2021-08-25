import 'dart:async';

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
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  color: Colors.black,
                ),
              Container(
                height: 50,

                child: Text("test",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 21,
                    color: Colors.white,

                  ),textAlign: TextAlign.center,
                ),
              ),
            Container(
               height: 50,
               color: Colors.black,
                ),
            ],),
            Container(
              height: 20,
              color: Colors.black,
            ),
            Text("Main Page",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Gsans_KR',
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ), textAlign: TextAlign.center,
            ),
          ],
        )
    );
  }
}
