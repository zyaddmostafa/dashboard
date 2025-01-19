import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeaderItem extends StatelessWidget {
  const AllExpensesHeaderItem({
    super.key,
    required this.imagecolor,
    required this.image,
    this.backgroundColor,
  });
  final String image;
  final Color? backgroundColor, imagecolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imagecolor ?? Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,
              color: imagecolor == null ? Color(0xff064061) : Colors.white),
        ),
      ],
    );
  }
}
