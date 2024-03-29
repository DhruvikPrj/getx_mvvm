import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:getx_mvvm/res/components/internet_exception.dart';
import 'package:getx_mvvm/res/getx_localization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
// import 'package:getx_mvvm/views/splash_screen.dart';
import 'package:getx_mvvm/views/splash_screen2.dart';
// import 'package:getx_mvvm/views/splash_screen2.dart';
//import 'package:getx_mvvm/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: Languages(),
      locale: const Locale('hi', 'IN'),
      fallbackLocale: const Locale('hi', 'IN'),
      getPages: AppRoutes.appRoutes(),
      home: const Scaffold(
        body: SplashScreen2(),
        // body: InternetExceptionWidget(
        //   onpress: () {},
        // ),
      ),
    );
  }
}
