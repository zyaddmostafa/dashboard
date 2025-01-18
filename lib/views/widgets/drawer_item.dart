import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isactive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? ActiveItem(drawerItemModel: drawerItemModel)
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}
