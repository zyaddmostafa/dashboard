import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isactive});
  final DrawerItemModel drawerItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: Styles.styleMedium16,
      ),
    );
  }
}
