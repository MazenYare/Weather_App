import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:course/weatherapp/Controller/homecontrol.dart';

import 'package:course/weatherapp/model/fivedaysc.dart';

class MyChart extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black45,
      ),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries<FiveDayData, String>>[
          SplineSeries<FiveDayData, String>(
            dataSource: controller.fiveDaysData,
            xValueMapper: (FiveDayData f, _) => f.dateTime,
            yValueMapper: (FiveDayData f, _) => f.temp,
          ),
        ],
      ),
    );
  }
}
