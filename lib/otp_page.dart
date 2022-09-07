import 'package:flutter/material.dart';
import 'package:login_page_2/widgets.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                  'Enter OTP',
                  "Please enter 6 digits otp code sent to your registered email and mobile number.",
                  context),
              const SizedBox(height: 70),
              Container(
                height: 230,
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
                          otpField(context),
                          const SizedBox(height: 15),
                          customButton1('Submit', 'new_password', context),
                          const SizedBox(height: 15),
                          textBox1("Not received OTP?", "Resend", 'resend_otp',
                              context)
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
