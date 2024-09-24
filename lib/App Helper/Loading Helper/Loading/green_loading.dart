import 'package:flutter/material.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import '../../color_helper.dart';

class GreenLoading extends StatelessWidget {
  const GreenLoading({super.key});

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
              Image.asset('assets/images/spinner-green.gif',height: 50,),
              const SizedBox(height: 20,),
              const Text('LOADING',
              style: TextStyle(
                fontFamily: FontHelper.avenirMedium,
                letterSpacing: 3,
                color: ColorHelper.brown
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
