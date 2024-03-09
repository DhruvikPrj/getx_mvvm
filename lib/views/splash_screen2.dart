import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
// import 'package:get/get.dart';
// import 'package:getx_mvvm/res/components/internet_exception.dart';
// import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/utils/utils.dart';
// import 'package:getx_mvvm/views/home_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'logo.json',
              height: 100,
              animate: true,
            ),
          ),
          //Text('email_hint'.tr)

          GestureDetector(
              onTap: () => Get.toNamed(RouteName.homeScreen),
              child: RoundButton(
                  loading: false,
                  title: "Log in",
                  onPress: () {},
                  textColor: Colors.white,
                  buttonColor: Colors.blue))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("This is Mesage");
          Utils.toastMessage("demo message");
        },
        child: const Icon(Icons.touch_app_sharp),
      ),
    );
  }
}
