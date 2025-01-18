import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: Styles.styleSemibold16,
        ),
        subtitle: Text(
          subtitle,
          style: Styles.styleRegular12,
        ),
      ),
    );
  }
}
