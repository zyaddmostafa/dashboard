import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        fillColor: Color(0xffFAFAFA),
        filled: true,
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(),
      ),
    );
  }
}

OutlineInputBorder buildborder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xffE5E5E5),
    ),
  );
}
