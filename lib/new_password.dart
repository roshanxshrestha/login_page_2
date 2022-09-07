import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
              pageInfo('Create new password',
                  'Create a new password and proceed login.', context),
              const SizedBox(height: 55),
              Container(
                height: 265,
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
                          passwordField('New password'),
                          const SizedBox(height: 15),
                          passwordField('Confirm new password'),
                          const SizedBox(height: 15),
                          customButton1(
                              'Update Password', 'changed_password', context),
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
