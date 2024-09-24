import 'package:flutter/material.dart';

import '../../color_helper.dart';
import '../../font_helper.dart';

class RedLoading extends StatelessWidget {
  const RedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Spinner-1s-RED.gif',height: 50,),
              const SizedBox(height: 20,),
              const Text('LOADING',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    letterSpacing: 3,
                    color: ColorHelper.grenadier
                ),)
            ],
          ),
        ),
      ),
    );
  }
}