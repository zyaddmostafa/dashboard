import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Months',
          style: Styles.styleMedium16,
        ),
        SizedBox(
          width: 18,
        ),
        Transform.rotate(
            angle: -1.57, child: Icon(Icons.arrow_back_ios_new_outlined)),
      ],
    );
  }
}
