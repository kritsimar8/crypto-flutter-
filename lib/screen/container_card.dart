


import 'package:crypto_dash/constants.dart';
import 'package:crypto_dash/models/chart_spline_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.image,
    required this.amountInChart,
    required this.color,
    
  });

  final String title, subTitle,amount, image, amountInChart;
  final Color color ;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:defaultPadding/2),
      margin: EdgeInsets.only(left: defaultPadding),
      height: 230,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFF383846)
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding/2),
          child: Row(
            children: [
              SizedBox(height: 100,width: 100,
              child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(left:defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      title,
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:5.0),
                          child: Text(
                            amount,
                            style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                         Text(
                      "BTC",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white38,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                      ],
                    ),
                   
                    
                  ]
                ),
              )
            ],
          ),
        ),
        ContainerChartCard(color: color, amount : amount),
      ],)
    );
  }
}

class ContainerChartCard extends StatelessWidget {
  const ContainerChartCard({
    super.key,required this.color,required this.amount
  });
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SfCartesianChart(
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
      edgeLabelPlacement: EdgeLabelPlacement.shift,
      majorGridLines: MajorGridLines(width: 0),
      majorTickLines: MajorTickLines(width: 0),
      labelStyle: TextStyle(
        color: Colors.white38,
        fontSize: 14,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        
      ),
      isVisible: false,
            ),
            primaryYAxis: NumericAxis(
        majorGridLines: MajorGridLines(width: 0),
      majorTickLines: MajorTickLines(width: 0),
      isVisible: false,
            ),
            series: <CartesianSeries<ChartSplineData,String>>[
      LineSeries(
        color: color,
        width: 4,
        dataSource:chartData2 ,
        xValueMapper: (ChartSplineData data,_)=> data.month,
         yValueMapper: (ChartSplineData data,_)=> data.amount,),
      AreaSeries(
        color: color,
      
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
         yValueMapper: (ChartSplineData data,_)=> data.amount,
         gradient: LinearGradient(
          stops: [
            0.1,0.9
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[
            color,
            Color.fromARGB(6, 56, 56, 70)
          ]
         ),
         )
            ],
          ),
    );
  }
}

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