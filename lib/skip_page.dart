import 'package:flutter/material.dart';
import 'package:login_page_2/app_constants.dart';
import 'package:login_page_2/widgets.dart';

class SkippedPage extends StatefulWidget {
  const SkippedPage({Key? key}) : super(key: key);

  @override
  State<SkippedPage> createState() => _SkippedPageState();
}

class _SkippedPageState extends State<SkippedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background4.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // AppBar(
              //   backgroundColor: Colors.transparent,
              //   title: Image.asset('images/logo1.png'),
              // ),
              const SizedBox(height: 225),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      color: Colors.transparent,
                      width: 300,
                      child: Column(
                        children: [
                          const Text(
                            'Guest Mode',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Sign in or Sign up to get full the access!',
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 60),
                          customButton1(
                              'Sign In / Sign Up', 'main_page', context),
                          const SizedBox(height: 15),
                          customButton3(
                              'Continue Guest Mode', 'guest_page', context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
