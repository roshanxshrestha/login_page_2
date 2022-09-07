import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class FindAccount extends StatefulWidget {
  const FindAccount({Key? key}) : super(key: key);

  @override
  State<FindAccount> createState() => _FindAccountState();
}

class _FindAccountState extends State<FindAccount> {
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
              image: AssetImage('images/background2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: Image.asset('images/logo1.png'),
              ),
              const SizedBox(height: 10),
              pageInfo(
                  'Find your account',
                  'Please enter your email address to search your account',
                  context),
              const SizedBox(height: 90),
              Container(
                height: 185,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
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
                          emailField(),
                          const SizedBox(height: 15),
                          customButton1('Search', 'main_page', context),
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
