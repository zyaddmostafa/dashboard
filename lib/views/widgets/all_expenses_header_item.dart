import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeaderItem extends StatelessWidget {
  const AllExpensesHeaderItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ],
    );
  }
}
