import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Widget/login_filds.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Controller/register_user_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/personal_information_screen.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
import '../../../App Helper/color_helper.dart';
import '../../../App Helper/font_helper.dart';

class RegisterUserScreen extends StatelessWidget {
  RegisterUserScreen({super.key});
  final controller = Get.put(RegisterUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorHelper.brown,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const ImageIcon(
              AssetImage('assets/images/back.png'),
              color: Colors.white,
            )),
        title: const Text('REGISTER NEW USER',style: TextStyle(
          letterSpacing: 1,
          color: Colors.white,
          fontSize: 15,
          fontFamily: FontHelper.avenirBook
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
                color: Colors.white,
              // decoration: const BoxDecoration(
              //   borderRadius: BorderRadius.vertical(top: Radius.circular(25))
              // ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30, top: 30),
                      height: Get.height / 4,
                      child: Image.asset('assets/images/ReferAFriendScreen.png'),
                    ),
                    // TextInputField(
                    //   label: 'Sponsor Username/User ID*',
                    //   labelClr: ColorHelper.Black,
                    //   controller: controller.sponsorIdController,
                    // ),
                    LoginFields(
                      controller: controller.sponsorIdController,
                      label: 'Sponsor username / userID',
                      prifix: const Icon(Icons.person_outlined),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RoundedButton(
                      btnLabel: 'VERIFY',
                      fontSize: 12,
                      btnColor: ColorHelper.brown,
                      btnOnTap: (){
                        Get.to(()=>PersonalInformationScreen());
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
