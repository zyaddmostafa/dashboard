import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/user_info_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/views/widgets/user_info.dart';

class LatestTransationListView extends StatelessWidget {
  const LatestTransationListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfo(
                userInfoModel: items[index],
              ),
            );
          }),
    );
  }
}
