import 'dart:developer';
import 'package:flutter/material.dart';
import '../../App Helper/color_helper.dart';


class RoundedButton2 extends StatefulWidget {
  const RoundedButton2({
    this.onPressed,
    this.buttonText,
    this.textStyleForButtonText,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.overlayColor,
    super.key,
  });
  final double? buttonHeight;
  final double? buttonWidth;
  final Function? onPressed;
  final String? buttonText;
  final TextStyle? textStyleForButtonText;
  final Color? overlayColor;
  final Color? buttonColor;
  @override
  _RoundedButton2State createState() => _RoundedButton2State();
}

class _RoundedButton2State extends State<RoundedButton2> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.buttonHeight ?? 44,
      width: widget.buttonWidth ??   240,
      child: Material(
        color: widget.buttonColor ?? ColorHelper.brown,
        borderRadius: BorderRadius.circular(/*_screenModal!.rtoHW! **/ 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(/*_screenModal!.rtoHW! * */20),
          onTap: widget.onPressed == null
              ? () {
            log('OnPressed Function Null');
          }
              : () {
            widget.onPressed!();
          },
          overlayColor: MaterialStateProperty.resolveWith(
                  (states) => widget.overlayColor ?? Colors.white.withOpacity(0.5)),
          child: Center(
              child: Text(
                widget.buttonText ?? 'SEND OTP',
                style: widget.textStyleForButtonText,
              )),
        ),
      ),
    );
  }
}