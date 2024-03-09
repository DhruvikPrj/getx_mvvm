import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
}
