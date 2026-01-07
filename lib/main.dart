import 'package:flutter/material.dart';
import 'pages/accueil_page.dart';

void main() {
  runApp(UnivApp());
}

class UnivApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calcul Moyenne Université",
      home: AccueilPage(),
    );
  }
}
