import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: [
          SplineSeries<ExpanseData, String>(
              color: Color(0xff50C878),
              dataSource: getexpensedata(),
              xValueMapper: (ExpanseData sales, _) => sales.year,
              yValueMapper: (ExpanseData sales, _) => sales.expense)
        ],
      ),
    );
  }
}

class ExpanseData {
  String year;
  int expense;
  ExpanseData(this.expense, this.year);
}

dynamic getexpensedata() {
  List<ExpanseData> data = [
    ExpanseData(40, 'Mon'),
    ExpanseData(60, 'Tues'),
    ExpanseData(15, 'Wed'),
    ExpanseData(45, 'Thurs'),
    ExpanseData(100, 'Fri'),
    ExpanseData(95, 'Sat'),
    ExpanseData(125, 'Sun')
  ];

  return data;
}
