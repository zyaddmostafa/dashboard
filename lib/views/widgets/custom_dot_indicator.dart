import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
    );
  }
}
