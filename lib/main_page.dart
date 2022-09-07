import 'package:flutter/material.dart';
import 'package:login_page_2/app_constants.dart';
import 'package:login_page_2/widgets.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({Key? key}) : super(key: key);

  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background1.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Image.asset('images/logo.png'),
              const SizedBox(height: 10),
              Text(
                'APP ICON',
                style: TextStyle(
                  color: Colors.blue[50],
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 80),
              Container(
                height: 320,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Welcome to App Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Discover Amazing Things Near Around You.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 40),
                    customButton1('Sign In', 'login_page', context),
                    const SizedBox(height: 20),
                    customButton2('Sign Up', 'register_page', context),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'findaccount');
                      },
                      child: const Text(
                        'Forgot Login ID?',
                        style: TextStyle(
                          fontSize: 17,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              connectUsing(context),
              const SizedBox(height: 15),
              container2(context),
              const SizedBox(height: 15),
              const Skip(),
            ],
          ),
        ),
      ),
    );
  }
}
