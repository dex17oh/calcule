import 'package:flutter/material.dart';
import 'package:moyenne_app/pages/splash_screen/sp_screen.dart';


void main() {
  runApp(UnivApp());
}

class UnivApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calcul Moyenne Université",
      home: SplashScreen(),
    );
  }
}
