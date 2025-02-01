import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/income_chart.dart';
import 'package:responsivedashboard/views/widgets/income_details_list_view.dart';
import 'package:responsivedashboard/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                child: IncomeDetailsListView(),
              )
            ],
          ),
        )
      ],
    );
  }
}
