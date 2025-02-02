import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/views/widgets/dots_indicator.dart';
import 'package:responsivedashboard/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: Styles.styleSemibold20(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPage: currentPage,
        ),
      ],
    );
  }
}
