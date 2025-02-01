import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/custom_background_container.dart';
import 'package:responsivedashboard/views/widgets/my_card_section.dart';
import 'package:responsivedashboard/views/widgets/transaction_history_section.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
