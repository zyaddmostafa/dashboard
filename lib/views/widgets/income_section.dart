import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/icome_section_body.dart';
import 'package:responsivedashboard/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: IncomeSectionBody(),
        )
      ],
    );
  }
}
