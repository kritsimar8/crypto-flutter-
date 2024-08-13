

import 'package:crypto_dash/constants.dart';
import 'package:crypto_dash/models/chart_spline_data.dart';
import 'package:crypto_dash/screen/chart_spline.dart';
import 'package:crypto_dash/screen/container_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatelessWidget{
  const Dashboard({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:defaultPadding*2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(
                padding: const EdgeInsets.only(left:defaultPadding,right: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset("assets/images/logo.png")
                    ),
                    Column(
                      children:[
                        Text("Dashboard", style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        )),
                      ]
                    ),
                      
                        Icon(Icons.settings_outlined,size: 20,)
                  ],
                ),
                
              ),
              SizedBox(height: defaultPadding,),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding*2),
                child: Row(children:[
                  Column(
                    children:[
                      GradientText(
                        "Current",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                         colors: [
                          Color(0xFFA9E7A1),
                          Color(0xFFFDD19A),
                         ],
                         ),
                      GradientText(
                        "Balance",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                         colors: [
                          Color(0xFFA9E7A1),
                          Color(0xFFFDD19A),
                         ],
                         ),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      "\$",
                      style: GoogleFonts.ubuntu(
                        color: const Color.fromARGB(124, 147, 175, 20),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                    ),
                    Text(
                      "36 592.93",
                      style: GoogleFonts.ubuntu(
                        color: const Color.fromARGB(178, 236, 236, 236),
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                ]),
              ),
              Container(
                height: 300,
                child:  ChartSpline()
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      GradientText(
                          "Recent",
                          style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                           colors: [
                            Color(0xFFA9E7A1),
                            Color(0xFFFDD19A),
                           ],
                           ),
                        GradientText(
                          "Activity",
                          style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                           colors: const [
                            Color(0xFFA9E7A1),
                            Color(0xFFFDD19A),
                           ],
                           ),
                ],),
              ),
             const Padding(
                padding: const EdgeInsets.only(left:defaultPadding,top: defaultPadding,right: defaultPadding/2),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ContainerCard(
                      title: 'BITCOIN',
                      subTitle: "BTC",
                      amount: "31.56",
                      image: "assets/images/btn.png",
                      amountInChart: "\$28,445.50",
                      color: Colors.orangeAccent
                      ),
                      ContainerCard(
                      title: 'ETHEREUM',
                      subTitle: "ETH",
                      amount: "21.89",
                      image: "assets/images/eth.png",
                      amountInChart: "\$28,445.50",
                      color: Color.fromARGB(255, 12, 167, 206)),
                    ],
                  ),
                ),
        
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding*2,top: defaultPadding,bottom: defaultPadding),
                child: Row(
                  children: [
                    Column(
                     
                      children: [
                        Column(
                           crossAxisAlignment:  CrossAxisAlignment.start,
                           children:[
                             GradientText(
                            "Action",
                            style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                             colors: [
                              Color(0xFFA9E7A1),
                              Color(0xFFFDD19A),
                             ],
                             ),
                          GradientText(
                            "History",
                            style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                             colors: [
                              Color(0xFFA9E7A1),
                              Color(0xFFFDD19A),
                             ],
                             ),
                           ]
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      "All",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 15,),
                    SizedBox(width: defaultPadding*2,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding*2),
                child:Row(children: [
                  ClipOval(
                    child: SizedBox(
                      height: 50,
                      child:Image.asset("assets/images/unnamed.jpg") ,),
                  ),
                  SizedBox(width: defaultPadding,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        "Mr. Krit",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        "MasterCard .1004",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ]
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child:Text(
                      "+ \$165.88",
                      style: GoogleFonts.ubuntu(
                        color: Colors.greenAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )
                    )
                    )
                ],)
                )
            ],
          )
        ),
      )
    );
  }
}
