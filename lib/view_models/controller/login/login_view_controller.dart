import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
// import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class LoginViewController extends GetxController {
  //
  final _api = LoginRepository();
  //user preference
  UserPreferences userPreferences = UserPreferences();
  //
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
      if (value['message'] == 'password is incorrect' ||
          value['message'] == 'User not exits!') {
        //print(value);
        Utils.snackbarView(
            "Login Failed", value['message'], Appcolor.warningTitle);
      } else {
        //
        UserModel userModel = UserModel(
          accessToken: value['token'],
          isLoggedIn: true,
        );
        //
        userPreferences
            .saveUser(userModel)
            .then((value) {})
            .onError((error, stackTrace) {
          print(error.toString());
        });
        //print(value);
        Utils.snackbarView(
            "Successful", value['message'], Appcolor.successTitle);
        Get.toNamed(RouteName.homeScreen);
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      //print(error.toString());
      // Text(error.toString());
      print(error.toString());
      return Utils.snackbarView(
          "Login Failed", error.toString(), Appcolor.warningTitle);
    });
  }
}
