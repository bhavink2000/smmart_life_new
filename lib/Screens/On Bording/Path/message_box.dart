import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/login_screen.dart';

import '../../../App Helper/color_helper.dart';
import '../../../Widgets/Buttons/rounded_button2.dart';

class MessageBox1 extends StatelessWidget {
  const MessageBox1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Rejuvenation through ultra-rich nutrition based products',
          style: TextStyle(
            fontFamily: 'Avenir-Heavy',
            color: ColorHelper.romanCoffee.withOpacity(1),
            fontSize: 20,
            letterSpacing: 5,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          '',
          style: TextStyle(
            fontFamily: 'Avenir-Heavy',
            color: ColorHelper.romanCoffee.withOpacity(1),
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '',
            style: TextStyle(
              fontFamily: 'Avenir-Heavy',
              color: ColorHelper.romanCoffee.withOpacity(1),
              fontSize: 14,
              letterSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }
}

class MessageBox2 extends StatelessWidget {
  const MessageBox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Improving lives together!',
          style: TextStyle(
            fontFamily: 'Avenir-Heavy',
            color: ColorHelper.romanCoffee.withOpacity(1),
            fontSize: 20,
            letterSpacing: 5,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          '',
          style: TextStyle(
            fontFamily: 'Avenir-Heavy',
            color: ColorHelper.romanCoffee.withOpacity(1),
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '',
            style: TextStyle(
              fontFamily: 'Avenir-Heavy',
              color: ColorHelper.romanCoffee.withOpacity(1),
              fontSize: 14,
              letterSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }
}

class MessageBox3 extends StatelessWidget {
  const MessageBox3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
    Text(
      '',
      style: TextStyle(
        fontFamily: 'Avenir-Heavy',
        color: ColorHelper.romanCoffee.withOpacity(1),
        fontSize: 20,
        letterSpacing: 5,
      ),
    ),
    Text(
      '',
      style: TextStyle(
        fontFamily: 'Avenir-Heavy',
        color: ColorHelper.romanCoffee.withOpacity(1),
        fontSize: 20,
        letterSpacing: 5,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        '',
        style: TextStyle(
          fontFamily: 'Avenir-Heavy',
          color: ColorHelper.romanCoffee.withOpacity(1),
          fontSize: 14,
          letterSpacing: 3,
        ),
      ),
    ),
    RoundedButton2(
      buttonWidth: Get.width * 0.4,
      buttonColor: ColorHelper.brown.withOpacity(1),
      buttonText: 'SIGN IN',
      textStyleForButtonText: const TextStyle(
        fontFamily: 'Avenir-Heavy',
        color: Colors.white,
        fontSize: 14,
        letterSpacing: 3,
      ),
      onPressed: () {
        Get.to(() => LoginScreen());
      },
    ),
          ],
        );
  }
}
