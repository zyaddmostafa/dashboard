import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  List<AllExpensesItemModel> allExpensesList = const [
    AllExpensesItemModel(
      image: Assets.imagesMoneyss,
      title: 'Balance',
      price: r'$20,129',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      price: r'$20,129',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      price: r'$20,129',
      date: 'April 2022',
    ),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: allExpensesList.asMap().entries.map((e) {
      final index = e.key;
      final item = e.value;
      if (index == 1) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: AllExpensesItem(
                isslected: selectedindex == index,
                model: item,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectedIndex(index);
            },
            child: AllExpensesItem(
              isslected: selectedindex == index,
              model: item,
            ),
          ),
        );
      }
    }).toList());
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
