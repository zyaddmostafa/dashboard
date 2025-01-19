import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
        ],
      ),
    );
  }
}
