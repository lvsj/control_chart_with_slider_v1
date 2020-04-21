import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart'; // ? **********

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartRadius: MediaQuery.of(context).size.width / 1.5,
      chartValueBackgroundColor: Colors.grey[200],
      showLegends: false,
      colorList: colorList,
    );
  }
}
