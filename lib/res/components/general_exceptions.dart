import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: height * .14,
          ),
          Text(
            'general_exception'.tr,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
