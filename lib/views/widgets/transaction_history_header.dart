import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemibold20,
        ),
        Text(
          'See all',
          style: Styles.styleSemibold16.copyWith(
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
