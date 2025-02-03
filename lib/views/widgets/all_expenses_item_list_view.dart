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
  List<AllExpensesItemModel> item = const [
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateSelectedIndex(0);
              });
            },
            child: AllExpensesItem(
              isslected: selectedindex == 0,
              model: item[0],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateSelectedIndex(1);
              });
            },
            child: AllExpensesItem(
              isslected: selectedindex == 1,
              model: item[1],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateSelectedIndex(2);
              });
            },
            child: AllExpensesItem(
              isslected: selectedindex == 2,
              model: item[2],
            ),
          ),
        )
      ],
    );
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
