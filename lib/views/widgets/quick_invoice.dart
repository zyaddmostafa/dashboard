import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/widgets/custom_background_container.dart';
import 'package:responsivedashboard/views/widgets/latest_transaction.dart';
import 'package:responsivedashboard/views/widgets/quick_invoice_header.dart';
import 'package:responsivedashboard/views/widgets/quick_invoice_from.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
