import 'package:flutter/material.dart';
import 'package:moyenne_app/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeIn,
    );
    _animationController!.forward();

    Future.delayed(const Duration(seconds: 3), _checkUserStatus);
  }

  Future<void> _checkUserStatus() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => AccueilPage()),
    );
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _animation!,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [const SizedBox.shrink(), newMethod(context), buildTitle()],
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Text(
            'University GPA Calculator',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Developed by BLaCk14 && Sof Dex',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Center newMethod(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/icon.png",
        width: MediaQuery.of(context).size.width * 1,
      ),
    );
  }
}
