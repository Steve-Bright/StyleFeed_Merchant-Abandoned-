import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'LoginPage/signIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToAnother();
  }

  _navigateToAnother() async{
    await Future.delayed(Duration(milliseconds: 2000), (){});
    Navigator.pushReplacementNamed(context, '/signIn');
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: 'assets/logo2.png',
      nextScreen: SigningInPage(),
      splashTransition: SplashTransition.fadeTransition
    );
  }
}
