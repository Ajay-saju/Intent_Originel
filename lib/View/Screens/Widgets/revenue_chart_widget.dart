
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RevenueChatWidget extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  RevenueChatWidget({Key? key}) : super(key: key);
 
  @override
  RevenueChatWidgetState createState() => RevenueChatWidgetState();
}
 
class RevenueChatWidgetState extends State<RevenueChatWidget> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
 
  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <ChartSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Gold',
                  color: Color.fromRGBO(8, 142, 255, 1))
            ]));
  }
}
 
class _ChartData {
  _ChartData(this.x, this.y);
 
  final String x;
  final double y;
}