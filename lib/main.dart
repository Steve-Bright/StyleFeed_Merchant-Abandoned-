import 'package:flutter/material.dart';
import 'LoginPage/signUp.dart';
import 'LoginPage/signIn.dart';
import 'splashScreen.dart';
import 'Pages/productDetail.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splashScreen',
        routes: {
          '/splashScreen': (context) => const SplashScreen(),
          '/signIn': (context) => const SigningInPage(),
          '/signUp': (context) => const SigningUpPage(),
          '/productDetail': (context) => const ProductDetail()
        },
      ),
    );
