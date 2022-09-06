import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page_2/app_constants.dart';

//page info
@override
Widget pageInfo(String title, String description, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(30),
    color: Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15, width: 30),
        Text(
          description,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ],
    ),
  );
}

//textbox1
Widget textBox1(
    String text, String linkText, String routeName, BuildContext context) {
  return Column(
    children: [
      Text(
        text,
        style: const TextStyle(
          color: mainColor,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'routeName');
        },
        child: Text(
          linkText,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}

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

//button 3
Widget customButton3(String title, String routeName, BuildContext context) {
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

//input email field
Widget emailField() {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      label: const Padding(
        padding: EdgeInsets.only(top: 0),
        child: Icon(Icons.email),
      ),
      fillColor: Colors.white,
      filled: true,
      hintText: 'Email',
      hintStyle: const TextStyle(
        color: mainColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

//input name field
Widget nameField() {
  return TextField(
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      label: const Padding(
        padding: EdgeInsets.only(top: 0),
        child: Icon(Icons.person),
      ),
      fillColor: Colors.white,
      filled: true,
      hintText: 'Full Name',
      hintStyle: const TextStyle(
        color: mainColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

//password field box
Widget passwordField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: 'password',
      hintStyle: const TextStyle(
        color: mainColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: const Padding(
        padding: EdgeInsets.only(top: 0),
        child: Icon(Icons.lock),
      ),
    ),
    obscureText: true,
  );
}

//contact number /phone  field box
Widget phoneField() {
  return TextFormField(
    inputFormatters: [
      LengthLimitingTextInputFormatter(10),
      FilteringTextInputFormatter.digitsOnly,
    ],
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: 'Enter mobile number',
      hintStyle: const TextStyle(
        color: mainColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: const Padding(
        padding: EdgeInsets.only(top: 0),
        child: Icon(Icons.phone),
      ),
    ),
  );
}

//connect using
Widget connectUsing(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 50.0, right: 20.0),
            child: const Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
      const Text(
        "Or connect using",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 20.0, right: 50.0),
          child: const Divider(
            color: Colors.black,
            height: 36,
          ),
        ),
      ),
    ],
  );
}

//other links to connect with / container2
Widget container2(BuildContext context) {
  return Container(
    height: 70,
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.facebookSquare),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.twitterSquare),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.google),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.mobileScreen),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, 'number_login');
          },
        ),
      ],
    ),
  );
}

//otp field
Widget otpField(BuildContext context) {
  return Form(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        otpContainer(context, 1),
        otpContainer(context, 2),
        otpContainer(context, 3),
        otpContainer(context, 4),
        otpContainer(context, 5),
        otpContainer(context, 6),
      ],
    ),
  );
}

//otp container
Widget otpContainer(BuildContext context, int boxValue) {
  return Container(
    height: 50,
    width: 42,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      border: Border.all(
        color: mainColor,
      ),
    ),
    child: TextFormField(
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      onSaved: (boxValue) {},
      decoration: const InputDecoration(hintText: "."),
      style: Theme.of(context).textTheme.headlineSmall,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
      obscureText: false,
    ),
  );
}

//skip widget with dialog
class Skip extends StatelessWidget {
  const Skip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Are you sure you want to skip login?'),
          content: const Text(
              'Sign in to get the most out of us. On continuing you will enter a guest mode.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, 'guest_page'),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
      child: Text(
        'SKIP',
        style: TextStyle(
          fontSize: 17,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
