import 'package:flutter/material.dart';
import 'package:login_page_2/login_page.dart';
import 'package:login_page_2/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_page',
      routes: {
        'main_page': (context) => const OpenPage(),
        'login_page': (context) => const LoginPage(),
      },
    ),
  );
}
