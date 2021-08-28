import 'dart:async';
import 'dart:math';

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

  List logList = ['0000'];
  List canntList = ['7100','7200','7300','7400','7500','7600','7700'];
  List vfrList = ['1200','1201','1202','1203','1204','1205','1206','1207','1208','1209'];
  int ranDomixze1 = 0;
  int ranDomixze2 = 0;
  int ranDomixze3 = 0;
  int ranDomixze4 = 0;
  String sqnumb = '0000';

  void ranDomizevoid(){
    // SnackBar(content: Text("번호가 추천되었습니다."));
    setState(() {
      pickUp();
      if(logList.contains(sqnumb) || canntList.contains(sqnumb) || vfrList.contains(sqnumb) ){
        pickUp();
      }
     });

  }

  void pickUp(){
    setState(() {
      ranDomixze1 = Random().nextInt(7) + 1;
      ranDomixze2 = Random().nextInt(7) + 1;
      ranDomixze3 = Random().nextInt(7) + 1;
      ranDomixze4 = Random().nextInt(7) + 1;
      sqnumb = '$ranDomixze1'+'$ranDomixze2'+'$ranDomixze3'+'$ranDomixze4';
      logList.add(sqnumb);
    });
  }


  Widget build(BuildContext context) {

    //변수 집합소
    const backGround = 0xff0E0E0E;
    const tittleBackGround = 0xff000000;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: const Color(backGround),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(tittleBackGround),
        toolbarHeight: screenWidth/7.69,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'SCODE SYSTEM',
          style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Gsans_KR',
                fontWeight: FontWeight.w500,
                fontSize: screenWidth/23.80,
                color: Colors.white,
                ),),),),
      body:
      SingleChildScrollView(
      child:
      Center(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenWidth-((screenWidth/12.5)*1.3),
                height: screenHeight,
                color: const Color(backGround),
                child: Center(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: screenWidth/16.77)),
                      Text("* Do not use in Real world!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.redAccent,
                          fontFamily: 'Gsans_KR',
                        ),),
                      Padding(padding: EdgeInsets.only(top: screenWidth/16.77)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _textStyle(screenWidth, '$ranDomixze1'),
                          Padding(padding: EdgeInsets.only(right: (screenWidth/25)*1.3)),
                          _textStyle(screenWidth, '$ranDomixze2'),
                          Padding(padding: EdgeInsets.only(right: (screenWidth/25)*1.3)),
                          _textStyle(screenWidth, '$ranDomixze3'),
                          Padding(padding: EdgeInsets.only(right: (screenWidth/25)*1.3)),
                          _textStyle(screenWidth, '$ranDomixze4'),
                        ],
                      ),//SQ CODE 번호 자리
                      Padding(padding: EdgeInsets.only(top: screenWidth/9.34)),
                      ElevatedButton(onPressed: ranDomizevoid,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            fixedSize: Size(screenWidth*0.74, screenHeight/15.28),
                            shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text("Randomnize Numbers",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: screenWidth/30 ,

                          ),
                          )),
                      Container(
                        width: screenWidth*0.74,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: screenWidth/9.43)),
                            Container(
                              color: Colors.black54,
                              height: 40,
                              width: screenWidth*0.74,
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 15)),
                                  Text("Information", style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Gsans_KR',
                                  ),)
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            _information(screenWidth, '- Press the "Randomize Numbers" button above to automatically recommend numbers.'),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            _information(screenWidth, '- Once recommended, numbers will not be drawn again unless restarted.'),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            _information(screenWidth, '- Code used in emergencies (7700, 7600, etc.) or code for VFR flights is not available.'),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            _information(screenWidth, '- If you have any questions, feel free to contact "junlab0801@gmail.com".'),
                            Padding(padding: EdgeInsets.only(bottom: 60)),
                            Container(
                              width: screenWidth*0.74,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  _information(screenWidth, 'ver : 1.5.1b'),
                                  Padding(padding: EdgeInsets.only(bottom: 10)),
                                  _information(screenWidth, 'ⓒ2021 JUNLAB'),
                                ],
                              ),

                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),),
    );
  }
}

Widget _textStyle(double Widths, String Texts){
  double witdths = Widths;
  String? fromText = Texts;

  return Container(
    alignment:Alignment.center,
    child: Text("$fromText",
      style: TextStyle(
        decoration: TextDecoration.none,
        color: Colors.white,
        fontSize: witdths/16,
        fontFamily: 'Gsans_KR',
      ),),
    color: Colors.black,
    width: witdths/8.92,
    height: witdths/6.41,
  );
}


Widget _information(double Widths, String Texts) {
  double witdths = Widths;
  String? fromText = Texts;

  return Text("$fromText",
      style: TextStyle(
        decoration: TextDecoration.none,
        color: Colors.white,
        fontSize: witdths / 45,
        fontFamily: 'Gsans_KR',
      ),);
}