import 'package:flutter/material.dart';

class PageModel {
  String _image;
  String _title;
  String _description;
  Widget widget;

  PageModel(this._image, this._title, this._description, {this.widget});

  String get description => _description;

  String get title => _title;

  String get image => _image;
}

List<PageModel> page;

void addPage() {
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
