import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/income_chart.dart';
import 'package:responsivedashboard/views/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1750
        ? SizedBox()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                child: IncomeDetailsListView(),
              )
            ],
          );
  }
}
