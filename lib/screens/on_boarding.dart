import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import '../models/page_model.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageController = PageController(initialPage: 3);

  ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    addPage();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(
                            page[index].image,
                          ),
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Transform.translate(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          page[index].title,
                          style: TextStyle(
                            color: Colors.blueAccent.shade700,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                            right: 40,
                          ),
                          child: Text(
                            page[index].description,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: ArabicFonts.Cairo,
                                package: 'google_fonts_arabic',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    offset: Offset(0, 16),
                  )
                ],
              );
            },
            itemCount: page.length,
            onPageChanged: (index) {
              _valueNotifier.value = index;
            },
            controller: pageController,
          ),
        ],
      ),
    );
  }
}
