import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsivedashboard/views/widgets/custom_dot_indicator.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';
import 'package:responsivedashboard/views/widgets/my_card_page_view.dart';

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
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        Expanded(child: MyCardPageView()),
        CustomDotIndicator(isActive: false),
      ],
    );
  }
}
