import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            UserInfo(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ],
        ));
  }
}
