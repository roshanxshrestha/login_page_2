import 'package:flutter/material.dart';
import 'package:login_page_2/guest_page.dart';
import 'package:login_page_2/login_page.dart';
import 'package:login_page_2/main_page.dart';
import 'package:login_page_2/register_page.dart';
import 'package:login_page_2/skip_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_page',
      routes: {
        'main_page': (context) => const OpenPage(),
        'login_page': (context) => const LoginPage(),
        'register_page': (context) => const RegisterPage(),
        'skip_page': (context) => const SkippedPage(),
        'guest_page': (context) => const GuestPage(),
      },
    ),
  );
}
