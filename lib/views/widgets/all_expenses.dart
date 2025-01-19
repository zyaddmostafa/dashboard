import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_header.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_item_list_view.dart';
import 'package:responsivedashboard/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
