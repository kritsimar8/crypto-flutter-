


import 'package:crypto_dash/models/chart_spline_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartSpline extends StatelessWidget {
  const ChartSpline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      onDataLabelRender: (DataLabelRenderArgs args){
        if(args.pointIndex==4){
          args.text ="\$4.00";
          args.textStyle= TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          );
          args.offset = Offset(0,20);
        }
        if(args.pointIndex!=4){
          args.text ='';
        }
      },
      onMarkerRender: (MarkerRenderArgs args){
        if(!(args.pointIndex==4)){
          args.markerHeight=0;
          args.markerWidth=0;
        }
      },
      plotAreaBackgroundColor: Colors.transparent,
      margin: EdgeInsets.all(0),
      borderColor: Colors.transparent,
      borderWidth: 0,
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        // labelPlacement: LabelPlacement.onTicks,
        // edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
        labelStyle: TextStyle(
          color: Colors.white38,
          fontSize: 14,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
      ),
      primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
        isVisible: false,
      ),
      series: <CartesianSeries<ChartSplineData,String>>[
        SplineSeries(
          color: Color(0xFFA9E7A1),
          width: 4,
          dataSource:chartData ,
          xValueMapper: (ChartSplineData data,_)=> data.month,
           yValueMapper: (ChartSplineData data,_)=> data.amount,),
        SplineSeries(
          color: Color(0xFFFDD19A),
          width: 4,
          dataSource:chartData2 ,
          // markerSettings: const MarkerSettings(
          //   isVisible: true,
          //   color: Color(0xFFFDD19A),
          //   borderColor: Colors.white,
          //   borderWidth: 4,
          //   height: 20,
          //   width: 20,
          // ),
          // dataLabelSettings: DataLabelSettings(
          //   useSeriesColor: true,
          //   isVisible: true,
          //   labelAlignment: ChartDataLabelAlignment.top,
          // ),
          xValueMapper: (ChartSplineData data,_)=> data.month,
           yValueMapper: (ChartSplineData data,_)=> data.amount,)
      ],
    );
  }
}

final List<ChartSplineData> chartData = <ChartSplineData>[
  ChartSplineData("JAN", 3),
  ChartSplineData("FEB", 8),
  ChartSplineData("MAR", 5),
  ChartSplineData("APR", 5.5),
  ChartSplineData("JUN", 9),
  ChartSplineData("JUL", 6),
  ChartSplineData("AUG", 14),
  ChartSplineData("SEP", 8),
];
final List<ChartSplineData> chartData2 = <ChartSplineData>[
  ChartSplineData("JAN", 4),
  ChartSplineData("FEB", 5),
  ChartSplineData("MAR", 9),
  ChartSplineData("APR", 4),
  ChartSplineData("JUN", 5),
  ChartSplineData("JUL", 12),
  ChartSplineData("AUG", 10),
  ChartSplineData("SEP", 7),
];