import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/all_expenses_header_item.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.model});
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
            imagecolor: null,
            backgroundColor: Colors.white,
            image: model.image,
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

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.model});
  final AllExpensesItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff4EB7F2), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Color(0XFF4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderItem(
            imagecolor: Colors.white,
            backgroundColor: Color(0XFF4EB7F2),
            image: model.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: Styles.styleSemibold16.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(model.date,
              style: Styles.styleRegular14.copyWith(color: Colors.white)),
          SizedBox(
            height: 16,
          ),
          Text(model.price,
              style: Styles.styleSemibold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
