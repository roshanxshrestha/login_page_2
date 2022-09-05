import 'package:flutter/material.dart';
import 'package:login_page_2/app_constants.dart';

//button 1
Widget customButton1(String title, String routeName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: mainColor,
        border: Border.all(
          color: mainColor,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

//button 2
Widget customButton2(String title, String routeName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: mainColor,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: mainColor,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

//input text field
Widget textField(String hint_text) {
  return TextField(
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: hint_text,
      hintStyle: const TextStyle(
        color: Color.fromARGB(255, 18, 26, 39),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
