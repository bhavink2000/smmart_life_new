import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/login_screen.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../../../Widgets/Buttons/rounded_button.dart';

class UserAddedSuccessScreen extends StatelessWidget {
  const UserAddedSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Get.offAll(() => LoginScreen());
                      },
                      icon: const Icon(
                        Icons.clear,
                        size: 30,
                      )),
                ),
              ),
              SizedBox(
                height: Get.height / 6,
              ),
              Image.asset(
                'assets/images/Group 2388@3xnew.png',
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'New User Added\nSuccessfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontHelper.segoeuiRegular, fontSize: 30),
              ),
              const Spacer(),
              RoundedButton(
                btnLabel: 'CLOSE',
                fontSize: 12,
                btnColor: ColorHelper.brown,
                btnOnTap: () {
                  Get.offAll(() => LoginScreen());
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
