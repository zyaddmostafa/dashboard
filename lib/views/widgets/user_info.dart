import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/user_info_model.dart';
import 'package:responsivedashboard/utils/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: Styles.styleSemibold16(context),
        ),
        subtitle: Text(
          userInfoModel.subtitle,
          style: Styles.styleRegular12(context),
        ),
      ),
    );
  }
}
