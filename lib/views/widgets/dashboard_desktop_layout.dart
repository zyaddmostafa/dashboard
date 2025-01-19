import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 27,
        ),
        Expanded(child: AllExpenses())
      ],
    );
  }
}
