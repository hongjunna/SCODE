import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'gsans'),
        home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
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
              fontFamily: 'gsans',
              fontSize: 36,
              color: Colors.white
            ), textAlign: TextAlign.center,
          ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 225, 0, 225),
        ),
          Text("SQ Code Recommendation\nSystem for Controllers",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'gsans',
                fontSize: 11,
                color: Colors.white70
            ), textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          ),
          Text("ⓒ2021 JUNLAB",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'gsans',
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
