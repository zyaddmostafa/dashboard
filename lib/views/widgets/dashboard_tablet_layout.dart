import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';
import 'package:responsivedashboard/views/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashBoardMobileLayout()),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
