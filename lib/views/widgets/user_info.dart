import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
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
