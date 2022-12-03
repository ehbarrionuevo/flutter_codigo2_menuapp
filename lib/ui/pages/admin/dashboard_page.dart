
import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1(
                  text: "Dashboard Principal",
                ),
                H6(
                  text: "Reportes generales de la empresa",
                  color: kBrandSecondaryColor.withOpacity(0.60),
                ),
                SfCircularChart(
                  series: <CircularSeries>[
                    PieSeries(
                      dataSource: [
                        "Hola",
                        "Como estas"
                      ],
                      pointColorMapper: (x, index)=> Colors.red,
                      xValueMapper: (x, index)=> 10,
                      yValueMapper: (x, index)=> 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PieChartModel{
  final String x;
  final double y;
  final Color color;
  PieChartModel({required this.x, required this.y, required this.color,});
}
