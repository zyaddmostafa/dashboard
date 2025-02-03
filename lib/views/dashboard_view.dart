import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/adaptive_layout.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';

import 'package:responsivedashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsivedashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsivedashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                elevation: 0,
                shadowColor: Color(0xffFAFAFA),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )
            : null,
        drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
        backgroundColor: Color(0xffF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => DashBoardMobileLayout(),
            tabletLayout: (context) => DashboardTabletLayout(),
            desktopLayout: (context) => DashboardDesktopLayout()));
  }
}
