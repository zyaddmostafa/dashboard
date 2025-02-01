import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_model.dart';
import 'package:responsivedashboard/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> item = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 April 2022',
        amount: r'$2000',
        isWithDraw: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 April 2022',
        amount: r'$2000',
        isWithDraw: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 April 2022',
        amount: r'$2000',
        isWithDraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: item
            .map((e) => TransactionItem(
                  transactionModel: e,
                ))
            .toList());
    // return ListView.builder(
    //   itemCount: item.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) => TransactionItem(
    //     transactionModel: item[index],
    //   ),
    // );
  }
}
