import 'package:flutter/material.dart';
import 'package:play_store/core/constants/image_constants.dart';
import 'package:play_store/view/default_screen/default_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(
      seconds: 3,
    )).then((value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DefaultScreen(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageConstants.playLogo, scale: 5),
      ),
    );
  }
}
