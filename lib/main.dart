import 'package:flutter/material.dart';
import 'package:vyappar_arabic/screens/welcome_page.dart';


main(){
  runApp(HomePage());
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Colors.blue.shade800
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
