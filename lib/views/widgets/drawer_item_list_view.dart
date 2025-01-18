import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesInvestment),
  ];
  int isactive = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (isactive != index) {
              setState(() {
                isactive = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isactive: isactive == index,
            ),
          ),
        );
      },
    );
  }
}
