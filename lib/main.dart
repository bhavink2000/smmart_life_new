import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smmart_life_new/Screens/Splash%20Screen/splash_screen.dart';
import 'Screens/On Bording/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  isAppOpenedBefore();
  runApp(const MyApp());
}

String? result;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      theme: ThemeData(),
      home: result == null
          ? const BeforeOnBoarding()
          : const BeforeSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

isAppOpenedBefore() async {
  final box = GetStorage();
  result = box.read('isAppOpenedBefore');
}
