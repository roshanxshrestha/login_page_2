import 'package:flutter/material.dart';
import 'package:login_page_2/find_account.dart';
import 'package:login_page_2/guest_page.dart';
import 'package:login_page_2/login_page.dart';
import 'package:login_page_2/main_page.dart';
import 'package:login_page_2/phone_login_page.dart';
import 'package:login_page_2/reset_password.dart';
import 'package:login_page_2/register_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_page',
      routes: {
        'main_page': (context) => const OpenPage(),
        'login_page': (context) => const LoginPage(),
        'register_page': (context) => const RegisterPage(),
        'guest_page': (context) => const GuestPage(),
        'number_login': (context) => const NumberLogin(),
        'findaccount': (context) => const FindAccount(),
        'password_reset': (context) => const ResetPassword(),
      },
    ),
  );
}
