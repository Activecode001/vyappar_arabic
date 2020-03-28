import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:vyappar_arabic/screens/bills_swipe.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        elevation: 8,
        leading: Icon(Icons.business_center),
        title: Text(
          'انشأ اول فاتورة مبيعات',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: ArabicFonts.Cairo,
            package: 'google_fonts_arabic',
            //fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 64,
            //color: Color.fromRGBO(164, 195, 232, 0.5),
            padding: EdgeInsets.only(top: 12, right: 8),
            child: Text(
              'من الاعدادات >>> اختر نموذج الفاتورة المناسب',
              style: TextStyle(
                color: Color.fromRGBO(21, 50, 84, 1),
                fontSize: 18,
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(

              color: Color.fromRGBO(112, 170, 238, 0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: BillsSwipe(),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FlatButton.icon(

              onPressed: () {

              },
              padding: EdgeInsets.only(left: 68, right: 68,bottom: 6,top: 6),
              icon: Icon(
                Icons.assessment,
                size: 40,
                color: Colors.white,
                textDirection: TextDirection.ltr,
              ),
              label:
              Text(
                'فاتورة مبيعات جديدة',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(8),
                  right: Radius.circular(8),
                ),
              ),
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }

}
