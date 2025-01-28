import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/custom_button.dart';
import 'package:responsivedashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    hint: 'Type customer name', title: 'Customer name')),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: TitleTextField(
                    hint: 'Type customer email', title: 'Customer Email'))
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  hint: 'Type customer name', title: 'Item name'),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextField(hint: 'USD', title: 'Item mount'),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
