import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  'Sign In',
                  'Sign in to discover amazing things near around you.',
                  context),
              const SizedBox(height: 20),
              Container(
                height: 300,
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
                          passwordField('password'),
                          const SizedBox(height: 15),
                          customButton1('Sign In', 'home_page', context),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'password_reset');
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 18, 26, 39),
                              ),
                            ),
                          ),
                        ],
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
