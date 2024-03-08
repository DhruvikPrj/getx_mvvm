import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/components/general_exceptions.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GeneralExceptionWidget(),
    );
  }
}
