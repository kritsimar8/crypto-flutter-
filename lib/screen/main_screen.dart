import 'package:crypto_dash/constants.dart';
import 'package:crypto_dash/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: defaultPadding * 2,
          bottom: defaultPadding*2
        ),
        child: Column(children: [
          Column(
            children: [
              Text(
                'Sell Crypto',
                style: GoogleFonts.ubuntu(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                'and spend',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0.1
                      ..color = Colors.greenAccent),
              ),
              Text(
                "and spend",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Stack(children: [
            Container(
                height: 390,
                width: 245,
                margin: EdgeInsets.only(top: 30),
                transform: Matrix4.rotationZ(-0.1),
                transformAlignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.only(right: 2, bottom: 1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/images/card2.png"),
                  ),
                )),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 410,
                width: 255,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    shape: BoxShape.rectangle,
                    color: Colors.green),
                child: Stack(
                  children: [
                    Image.asset("assets/images/card1.png"),
                    Container(
                      padding: EdgeInsets.only(
                        top: defaultPadding * 3,
                        left: defaultPadding * 2,
                        right: defaultPadding * 2,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              for (var i = 0; i < 4; i++)
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: defaultPadding),
                                child: Text(
                                  "1004",
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200),
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                "assets/icons/chip.png",
                                scale: 10,
                                color: Colors.grey,
                              )
                            ]),
                            Text(
                              "Mr.\nKrit Simar",
                              style: GoogleFonts.ubuntu(
                                  height: 1,
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(
                                "assets/icons/visa.svg",
                                height: 70,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            )
          ]),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 1),
              child: Text(
                maxLines: 4,
                textAlign: TextAlign.center,
                "Instantly get Cash for crypto,Spend it to your bank account, or spend online and in-store with you Beta visa Debit card ",
                style: GoogleFonts.ubuntu(
                    height: 1,
                    fontSize: 18,
                    color: const Color.fromARGB(157, 255, 255, 255),
                    fontWeight: FontWeight.w200),
              ),
          ),
          Spacer(),
          InkWell(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const Dashboard())
              );
            },
            child: Container(
              height: 40,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                  stops: [
                    0.0,1
                  ],
                  colors:[
                    Color.fromARGB(28, 122, 231, 112),
                    Color.fromARGB(90, 91, 248, 125)
                  ]
                )
              ),
              child: Row(
               
                children: [
                  Spacer(),
                  Text(
                    "Get Started",
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      color: const Color.fromARGB(181, 255, 255, 255),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_forward,color: const Color.fromARGB(85, 255, 255, 255),),
                  Spacer(),
            
                ],
              )
            ),
          ),
          // SizedBox(height: 20,)
        ]),
      ),
    );
  }
}
