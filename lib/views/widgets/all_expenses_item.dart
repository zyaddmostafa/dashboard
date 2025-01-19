import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_header_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.model});
  final AllExpensesItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffE0E0E0), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderItem(
            image: Assets.imagesIncome,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: Styles.styleSemibold16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(model.date, style: Styles.styleRegular14),
          SizedBox(
            height: 16,
          ),
          Text(model.price, style: Styles.styleSemibold24),
        ],
      ),
    );
  }
}
