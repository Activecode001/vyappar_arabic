import 'package:flutter/material.dart';

class BillsSwipe extends StatefulWidget {
  @override
  _BillsSwipeState createState() => _BillsSwipeState();
}

class _BillsSwipeState extends State<BillsSwipe> {
  PageController pageController;

  List<String> bills = [
    'assets/images/bill01.png',
    'assets/images/bill02.png',
    'assets/images/bill03.png',
    'assets/images/bill04.png',
    'assets/images/bill05.png',
    'assets/images/bill06.png',
    'assets/images/bill08.png',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 3, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: pageController,
          itemCount: bills.length,
          itemBuilder: (context, position) {
            return billsSlider(position);
          }),
    );
  }

  billsSlider(int position) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if(pageController.position.haveDimensions){
          value = pageController.page-position;
          value = (1-(value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 600,
            width:  Curves.easeInOut.transform(value) * 400,
            child: widget,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(2),
        child: Image(
          image: ExactAssetImage(bills[position]),
          //fit: BoxFit.cover,
        ),
      ),
    );
  }
}
