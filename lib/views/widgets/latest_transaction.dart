import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/latest_transation_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'Latest Transaction',
            style: Styles.styleMedium16,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransationListView(),
      ],
    );
  }
}
