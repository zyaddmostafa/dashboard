import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/views/widgets/inactive_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isslected});
  final AllExpensesItemModel model;
  final bool isslected;
  @override
  Widget build(BuildContext context) {
    return isslected
        ? ActiveExpensesItem(model: model)
        : InActiveExpensesItem(model: model);
  }
}
