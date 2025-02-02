import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: Styles.styleMedium16(context),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: Styles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.4,
        color: Color(0xff4EB7F2),
      ),
    );
  }
}
