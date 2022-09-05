import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              image: AssetImage('images/background3.jpeg'),
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
                  'Sign Up',
                  'Sign up to discover amazing things near around you.',
                  context),
              const SizedBox(height: 20),
              Container(
                height: 380,
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
                          nameField(),
                          const SizedBox(height: 15),
                          emailField(),
                          const SizedBox(height: 15),
                          passwordField(),
                          const SizedBox(height: 15),
                          customButton1('Sign Up', 'main_page', context),
                          const SizedBox(height: 15),
                          textBox1(
                              'By signing up you accept our',
                              'Terms of Services and Privacy Policy',
                              'privacy_policy',
                              context),
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
              skip(context),
            ],
          ),
        ),
      ),
    );
  }
}
