import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_header.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_item.dart';

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
          SizedBox(
            height: 16,
          ),
          AllExpensesItem(
            model: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              price: r'$20,129',
              date: 'April 2022',
            ),
          ),
        ],
      ),
    );
  }
}
