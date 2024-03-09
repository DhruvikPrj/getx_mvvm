import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Appcolor.blackColor,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG);
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Appcolor.whiteColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackbar(
    String title,
    String message,
    Color titleColor,
  ) {
    return Get.snackbar(title, message,
        colorText: titleColor,
        barBlur: 15,
        borderRadius: 10,
        animationDuration: const Duration(milliseconds: 1500),
        forwardAnimationCurve: const FlippedCurve(Curves.bounceOut));
  }
}
