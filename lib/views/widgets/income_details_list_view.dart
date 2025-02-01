import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_model.dart';
import 'package:responsivedashboard/views/widgets/income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const item = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', percentage: '40%'),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', percentage: '25%'),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', percentage: '20%'),
    IncomeDetailsModel(
        color: Color(0xffE2DECD), title: 'Other', percentage: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: item.map((e) => IncomeDetailsItem(item: e)).toList(),
    );
    // return ListView.builder(
    //   itemCount: item.length,
    //   itemBuilder: (context, index) => IncomeDetailsItem(
    //     item: item[index],
    //   ),
    // );
  }
}
