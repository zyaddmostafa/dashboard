import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1, child: Container(child: PieChart(getChartData())));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            title: touchedIndex == 0 ? 'Design service' : '40%',
            titlePositionPercentageOffset: touchedIndex == 0 ? 1.4 : 0.5,
            value: 40,
            radius: touchedIndex == 0 ? 60 : 50,
            titleStyle: Styles.styleMedium16(context).copyWith(
                color: touchedIndex == 0 ? Color(0xff064061) : Colors.white),
            color: Color(0xff208CC8),
          ),
          PieChartSectionData(
            title: touchedIndex == 1 ? 'Design product' : '25%',
            titlePositionPercentageOffset: touchedIndex == 1 ? 1.4 : 0.5,
            value: 25,
            radius: touchedIndex == 1 ? 60 : 50,
            titleStyle: Styles.styleMedium16(context).copyWith(
                color: touchedIndex == 1 ? Color(0xff064061) : Colors.white),
            color: Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            title: touchedIndex == 2 ? 'Product royalti' : '20%',
            titlePositionPercentageOffset: touchedIndex == 2 ? 1.4 : 0.5,
            radius: touchedIndex == 2 ? 60 : 50,
            titleStyle: Styles.styleMedium16(context).copyWith(
                color: touchedIndex == 2 ? Color(0xff064061) : Colors.white),
            color: Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            titlePositionPercentageOffset: touchedIndex == 3 ? 1.4 : 0.5,
            title: touchedIndex == 3 ? 'Other' : '22%',
            titleStyle: Styles.styleMedium16(context).copyWith(
                color: touchedIndex == 3 ? Color(0xff064061) : Colors.white),
            radius: touchedIndex == 3 ? 60 : 50,
            color: Color(0xffE2DECD),
          ),
        ]);
  }
}
