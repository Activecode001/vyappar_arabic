import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:vyappar_arabic/screens/main_screen.dart';
import 'package:vyappar_arabic/screens/on_boarding.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Transform.translate(
              child: Container(
                height: 600,
                child: OnBoarding(),
              ),
              offset: Offset(0, 140),
            ),
            Transform.translate(
              child: ClipPath(
                child: Container(
                  color: Colors.blue[600],
                  width: double.infinity,
                  height: 200,
                ),
                clipper: OvalTopBorderClipper(),
              ),
              offset: Offset(0, 580),
            ),
            Transform.translate(
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
                      },
                    ),
                  );
                },
                padding: EdgeInsets.only(left: 22, right: 22),
                icon: Icon(
                  Icons.business_center,
                  size: 40,
                  color: Colors.blueAccent,
                  textDirection: TextDirection.ltr,
                ),
                label: Text(
                  'ابدأ العمل',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(25),
                    right: Radius.circular(25),
                  ),
                ),
                color: Colors.white,
              ),
              offset: Offset(90, 610),
            ),
            ClipPath(
              child: Container(
                color: Colors.lightBlue[300],
                width: double.infinity,
                height: 140,
              ),
              clipper: WaveClipperTwo(),
            ),
            ClipPath(
              child: Container(
                color: Colors.blue[600],
                width: double.infinity,
                height: 100,
              ),
              clipper: WaveClipperOne(),
            ),
          ],
        ),
      ),
    );
  }
}

//
//Scaffold(
//body: Stack(
//children: <Widget>[
//Container(
//
//height: 400,
//decoration: BoxDecoration(
//image: DecorationImage(
//image: ExactAssetImage('assets/images/001.gif'),
//),
//),
//
////            Image.asset(
////              'assets/images/001.gif',
////              fit: BoxFit.cover,
////            ),
//),
//Center(
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//mainAxisAlignment: MainAxisAlignment.center,
//
//children: <Widget>[
//Center(
//child: Padding(
//padding: const EdgeInsets.only(top: 250, bottom: 48),
//
//child: Container(
//width: 250,
////                      decoration: BoxDecoration(
////                        image: DecorationImage(
////                          image: ExactAssetImage('assets/images/logo_bg.png'),
////                        ),
////                      ),
//child: Image.asset(
//'assets/images/logo_bg.png',
//),
//),
//),
//),
//Center(
//child: Text(
//'مرحبا بك في برنامج الحسابات الأول',
//style: TextStyle(
//fontWeight: FontWeight.bold,
//fontSize: 24,
//fontFamily: ArabicFonts.Cairo,
//package: 'google_fonts_arabic',
//),
//),
//),
//Center(
//child: Text(
//'بسيط ، شامل ، آمن',
//style: TextStyle(
//color: Colors.pink,
//fontSize: 24,
//fontFamily: ArabicFonts.Cairo,
//package: 'google_fonts_arabic',
//fontWeight: FontWeight.bold,
//),
//),
//),
//],
//),
//),
//Align(
//alignment: Alignment.bottomCenter,
//child: RaisedButton(
//splashColor: Colors.grey,
//onPressed: () {},
//textColor: Colors.white,
//padding: const EdgeInsets.only(bottom: 16),
//child: Container(
//decoration: const BoxDecoration(
//gradient: LinearGradient(
//colors: <Color>[
//Color.fromRGBO(27, 117, 168, 1),
////Color(0xFF0D47A1),
////Color(0xFF1976D2),
//Color.fromRGBO(0, 157, 247, 1),
//],
//),
//),
//padding: const EdgeInsets.only(right: 96,left: 96),
//child: const Text(
//'ابـــدأ العـــمل',
//style: TextStyle(fontSize: 32,
//fontFamily: ArabicFonts.Cairo,
//package: 'google_fonts_arabic',
//fontWeight: FontWeight.bold,
//)
//),
//),
//),
//),
//
//],
//),
//
//);
