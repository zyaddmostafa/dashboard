import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_model.dart';
import 'package:responsivedashboard/utils/styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});
  final IncomeDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: item.color,
        ),
      ),
      title: Text(
        item.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        item.percentage,
        style: Styles.styleRegular16(context).copyWith(
          color: Color(0xff208CC8),
        ),
      ),
    );
  }
}
