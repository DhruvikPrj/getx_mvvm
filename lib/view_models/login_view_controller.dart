import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/utils/utils.dart';

class LoginViewController extends GetxController {
  //
  final _api = LoginRepository();
  final emailcontroller = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailcontroller.value.text,
      "password": passwordController.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      Utils.snackbar(
          "Successful", "You are login Successfully", Appcolor.successTitle);
    }).onError((error, stackTrace) {
      loading.value = false;
      // print(error.toString());
      return Utils.snackbar("Login Failed",
          "Please Login with valid credentials", Appcolor.warningTitle);
    });
  }
}
