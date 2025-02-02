import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_model.dart';
import 'package:responsivedashboard/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemibold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16(context).copyWith(
            color: Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemibold16(context).copyWith(
            color: transactionModel.isWithDraw
                ? Color(0xffFF5C5C)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
