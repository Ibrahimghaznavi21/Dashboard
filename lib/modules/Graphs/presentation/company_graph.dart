import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:work/modules/Graphs/model/Bar_graph.dart';
import 'package:work/style/customize_color.dart';

import '../model/Bar_data.dart';
import '../model/Individual_bar.dart';

class CompanyGraph extends StatefulWidget {
  const CompanyGraph({super.key});

  @override
  State<CompanyGraph> createState() => _CompanyGraphState();
}

class _CompanyGraphState extends State<CompanyGraph> {




  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Z';
        break;
      case 1:
        text = 'FF';
        break;
      case 2:
        text = 'S';
        break;
      case 3:
        text = 'Z';
        break;
      case 4:
        text = 'Z';
        break;
      case 5:
        text = 'Z';
        break;
      case 6:
        text = 'Z';
        break;
      case 7:
        text = 'Z';
        break;
      case 8:
        text = 'Z';
        break;
      case 9:
        text = 'Z';
        break;
      case 10:
        text = 'Z';
        break;
      case 11:
        text = 'Z';
        break;
      case 12:
        text = 'Z';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    rightTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  LinearGradient get _barsGradient => LinearGradient(
    colors: [
      Colors.blue,
      Colors.amber,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
          toY: 8,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
          toY: 10,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
          toY: 14,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
          toY: 15,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
          toY: 13,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
          toY: 10,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
          toY: 16,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
          toY: 8,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
          toY: 10,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
          toY: 14,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
          toY: 15,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
          toY: 13,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
          toY: 10,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
          toY: 16,
          color:Colors.blue ,
        )
      ],
      showingTooltipIndicators: [0],
    ),
  ];

  BarTouchData get barTouchData => BarTouchData(
    enabled: true,
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 12,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.toY.round().toString(),
          const TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );


  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
          child: Container(
            height: height*0.299,
            width: width*0.719,
            //padding: const EdgeInsets.all(30),
            child: BarChart(
              BarChartData(
                barTouchData: barTouchData,
                titlesData: titlesData,
                borderData: borderData,
                barGroups: barGroups,
                gridData: const FlGridData(show: false),
                alignment: BarChartAlignment.spaceAround,
                maxY: 23,
              ),
            ),
          ),
        ));
  }
}


class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
