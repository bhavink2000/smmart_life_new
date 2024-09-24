import 'package:flutter/material.dart';
import '../../../../../App Helper/font_helper.dart';

dashSettingAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: const Text('PROFILE',
        style: TextStyle(
          fontFamily: FontHelper.avenirBook,
          fontSize: 14,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        )),
    automaticallyImplyLeading: false,
  );
}
