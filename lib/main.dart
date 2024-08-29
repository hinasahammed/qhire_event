import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qhire_event/view/onboard/onboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qhire event',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffE88F1B),
          primary: const Color(0xffE88F1B),
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
      ),
      home: const OnboardView(),
    );
  }
}
