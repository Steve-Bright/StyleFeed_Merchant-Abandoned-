import 'package:flutter/material.dart';
import 'package:style_feed2/Pages/editingextingproduct.dart';
import 'LoginPage/signUp.dart';
import 'LoginPage/signIn.dart';
import 'Pages/productDetail.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/signIn',
        routes: {
          '/signIn': (context) => const SigningInPage(),
          '/signUp': (context) => const SigningUpPage(),
          '/productDetail': (context) => const ProductDetail()
        },
      ),
    );
