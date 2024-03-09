import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;
  const InternetExceptionWidget({super.key, required this.onpress});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       onPressed: () => Get.back(),
      //       icon: const Icon(
      //         Icons.arrow_back_ios_rounded,
      //       ),
      //       alignment: Alignment.topLeft,
      //     )
      //   ],
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off,
              color: Colors.red,
              size: height * .14,
            ),
            Text(
              'internet_exception'.tr,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            RoundButton(
                loading: false,
                title: "Retry",
                onPress: () {},
                textColor: Colors.white,
                buttonColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
