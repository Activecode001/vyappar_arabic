import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> page;
  PageController pageController = PageController(initialPage: 3);

  ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  void _AddPage() {
    page = List<PageModel>();

    page.add(
      PageModel(
        'assets/images/acc3.png',
        'شامل',
        'يشمل جميع تعاملاتك المحاسبية واخراج جميع التقارير الممكنة بأعلى مواصفات',
      ),
    );
    page.add(
      PageModel('assets/images/acc1.png', 'آمن',
          'يأمن حساباتك وبيانات العملاء والموردين الخاص بك, وكذلك بياناتك المصرفية'),
    );
    page.add(
      PageModel('assets/images/acc2.png', 'سهل',
          'سهولة في استخدام الشاشات والأدوات لتقوم بعملك بطريقة أسهل وأسرع'),
    );

    page.add(
      PageModel('assets/images/logo_bg.png', 'مرحبا بك',
          'تمتع بأفضل الخدمات المحاسبية مع برنامج الحسابات الأول'),
    );
  }

  @override
  Widget build(BuildContext context) {
    _AddPage();
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
                            page[index]._image,
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
                          page[index]._title,
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
                            page[index]._describtion,
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

class PageModel {
  String _image;
  String _title;
  String _describtion;
  Widget widget;

  PageModel(this._image, this._title, this._describtion, {this.widget});

  String get describtion => _describtion;

  String get title => _title;

  String get image => _image;
}
