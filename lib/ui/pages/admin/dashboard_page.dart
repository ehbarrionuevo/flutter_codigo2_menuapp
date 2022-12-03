
import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardPage extends StatelessWidget {

  List<PieChartModel> dataPie =[
    PieChartModel(x: "Juan",y: 20, color: Colors.indigo,),
    PieChartModel(x: "Daniel",y: 30, color: Colors.greenAccent,),
    PieChartModel(x: "Julio",y: 50, color: Colors.redAccent,),
  ];

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
                  title: ChartTitle(text: "Resumen mensual",),
                  legend: Legend(
                    title: LegendTitle(text: "Detalle",),
                    isVisible: true,
                  ),
                  tooltipBehavior: TooltipBehavior(
                    enable: true,
                  ),
                  series: <CircularSeries>[
                    PieSeries<PieChartModel, String>(
                      dataSource: dataPie,
                      pointColorMapper: (model, index)=> model.color,
                      xValueMapper: (model, index)=> model.x,
                      yValueMapper: (model, index)=> model.y,
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
