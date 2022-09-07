import 'package:flutter/material.dart';
import 'package:login_page_2/app_constants.dart';

import 'package:login_page_2/widgets.dart';

class ChangedPassword extends StatefulWidget {
  const ChangedPassword({Key? key}) : super(key: key);

  @override
  State<ChangedPassword> createState() => _ChangedPasswordState();
}

class _ChangedPasswordState extends State<ChangedPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: Image.asset(
                  'images/logo1.png',
                ),
              ),
              const SizedBox(height: 105),
              Container(
                height: 500,
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
                          Text(
                            "Password Changed",
                            style: TextStyle(
                              color: Colors.amber[700],
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Congratulations!\nYou've successfully changed your password.",
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50),
                          Image.asset('images/tick.png'),
                          const SizedBox(height: 50),
                          customButton1("Back to login", "main_page", context),
                        ],
                      ),
                    )
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
