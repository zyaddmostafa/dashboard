import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/transaction_history_header.dart';
import 'package:responsivedashboard/views/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:
              Styles.styleMedium16(context).copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
