import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemibold20(context),
        ),
        Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Color(0xffE0E0E0),
                  width: 1.5), // Set border color and width here,
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
          ),
          child: RangeOption(),
        )
      ],
    );
  }
}
