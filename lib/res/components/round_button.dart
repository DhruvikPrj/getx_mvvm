import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      required this.loading,
      required this.title,
      this.height = 40,
      this.width = 100,
      required this.onPress,
      required this.textColor,
      required this.buttonColor});

  final bool loading;

  final String title;

  final double height, width;

  final VoidCallback onPress;

  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w700),
                ),
              ),
      ),
    );
  }
}
