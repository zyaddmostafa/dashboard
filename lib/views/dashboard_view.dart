import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/adaptive_layout.dart';

import 'package:responsivedashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsivedashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsivedashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                elevation: 0,
                shadowColor: Color(0xffFAFAFA),
                leading: Icon(Icons.menu),
              )
            : null,
        backgroundColor: Color(0xffF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => DashBoardMobileLayout(),
            tabletLayout: (context) => DashboardTabletLayout(),
            desktopLayout: (context) => DashboardDesktopLayout()));
  }
}
