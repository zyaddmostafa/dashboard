import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsivedashboard/views/widgets/income_section.dart';
import 'package:responsivedashboard/views/widgets/my_card_and_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          SizedBox(height: 400, child: IncomeSection()),
        ],
      ),
    );
  }
}
