import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/general_exceptions.dart';
import 'package:getx_mvvm/res/components/internet_exception.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        // actions: [
        //   IconButton(
        //     onPressed: () => Get.back(),
        //     icon: const Icon(
        //       Icons.arrow_back_ios_rounded,
        //     ),
        //     // alignment: Alignment.topLeft,
        //   )
        // ],
      ),
      body: InternetExceptionWidget(
        onpress: () {
          Get.snackbar('Failed !', "Please try after some time.",
              duration: const Duration(seconds: 3));
        },
      ),
    );
  }
}
