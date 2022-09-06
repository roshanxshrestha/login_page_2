import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class NumberLogin extends StatefulWidget {
  const NumberLogin({Key? key}) : super(key: key);

  @override
  State<NumberLogin> createState() => _NumberLoginState();
}

class _NumberLoginState extends State<NumberLogin> {
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
              pageInfo('Login with number',
                  "Your number is safe. We won't share your details.", context),
              const SizedBox(height: 20),
              Container(
                height: 320,
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
                          phoneField(),
                          const SizedBox(height: 15),
                          otpField(context),
                          const SizedBox(height: 15),
                          customButton1('Next', 'main_page', context),
                          const SizedBox(height: 15),
                          textBox1("Not received OTP?", "Resend", 'resend_otp',
                              context)
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
