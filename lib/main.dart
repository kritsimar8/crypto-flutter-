import 'package:crypto_dash/constants.dart';
import 'package:crypto_dash/screen/dashboard.dart';
import 'package:crypto_dash/screen/main_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor
      ),
      home: const Dashboard(),
    );
  }
}

