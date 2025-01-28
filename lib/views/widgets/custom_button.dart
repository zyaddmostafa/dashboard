import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: Styles.styleSemibold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
