import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
        ],
      ),
    );
  }
}
