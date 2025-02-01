import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsivedashboard/views/widgets/custom_drawer.dart';
import 'package:responsivedashboard/views/widgets/income_chart.dart';
import 'package:responsivedashboard/views/widgets/income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: IncomeChart())
      ],
    );
  }
}
