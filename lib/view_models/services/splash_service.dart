import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class SplashServices {
  UserPreferences userPreferences = UserPreferences();

  void isLogin() {
    userPreferences.getUser().then((value) {
      //print(value);

      if (value.isLoggedIn = false || value.isLoggedIn.toString() == 'null') {
        Timer(
          const Duration(seconds: 2),
          () => Get.toNamed(RouteName.loginView),
        );
      } else {
        Timer(
          const Duration(seconds: 2),
          () => Get.toNamed(RouteName.homeScreen),
        );
      }
    });
  }
}
