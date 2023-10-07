import 'package:flutter/material.dart';
import 'LoginPage/signUp.dart';
import 'LoginPage/signIn.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/signIn',
        routes: {
          '/signIn': (context) => const SigningInPage(),
          '/signUp': (context) => const SigningUpPage(),
        }));
