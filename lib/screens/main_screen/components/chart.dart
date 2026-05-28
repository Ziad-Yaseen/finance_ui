import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<Chart> {
  final double barWidth = 12;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  @override
  void initState() {
    super.initState();

    final barGroup1 = makeGroupData(0, 7300, 4800);
    final barGroup2 = makeGroupData(1, 7300, 4800);
    final barGroup3 = makeGroupData(2, 7300, 4800);
    final barGroup4 = makeGroupData(3, 7300, 4800);
    final barGroup5 = makeGroupData(4, 7300, 4800);

    final items = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5];

    rawBarGroups = items;
    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarChart(
          BarChartData(
            maxY: 8000,
            barTouchData: const BarTouchData(enabled: true),

            titlesData: FlTitlesData(
              show: true,
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),

              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: bottomTitles,
                  reservedSize: 32,
                ),
              ),

              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 35,
                  interval: 2000,
                  getTitlesWidget: leftTitles,
                ),
              ),
            ),

            borderData: FlBorderData(show: false),
            barGroups: showingBarGroups,

            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              horizontalInterval: 2000,
              getDrawingHorizontalLine: (value) => const FlLine(
                color: Color(0xFFE2E8F0),
                strokeWidth: 1,
                dashArray: [5, 5],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff94a3b8),
      fontWeight: FontWeight.w500,
      fontSize: 13,
    );
    String text = value.toInt() == 0 ? '0' : '${(value ~/ 1000).toInt()}k';

    return SideTitleWidget(
      meta: meta,
      space: 8,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Jan', 'Feb', 'Mar', 'Apr', 'May'];
    const style = TextStyle(
      color: Color(0xff94a3b8),
      fontWeight: FontWeight.w500,
      fontSize: 13,
    );

    if (value.toInt() >= 0 && value.toInt() < titles.length) {
      return SideTitleWidget(
        meta: meta,
        space: 10,
        child: Text(titles[value.toInt()], style: style),
      );
    }
    return const SizedBox();
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 6,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: const Color(0xFF5F75FF),
          width: barWidth,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
        ),
        BarChartRodData(
          toY: y2,
          color: const Color(0xFF2A3563),
          width: barWidth,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
        ),
      ],
    );
  }
}
