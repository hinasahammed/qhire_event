import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/view/onboard/onboard_view.dart';
import 'package:qhire_event/viewmodel/onboard/onboard_viewmodel.dart';
import 'package:qhire_event/viewmodel/tabbar/tabbar_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardViewmodel(),
        ),
        ChangeNotifierProvider(
          create: (context) => TabbarViewmodel(),
        ),
      ],
      child: MaterialApp(
        title: 'qhire event',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffE88F1B),
            primary: const Color(0xffE88F1B),
            primaryContainer: const Color(0xffCC5801),
            onPrimaryContainer: const Color(0xffffffff),
          ),
          textTheme: GoogleFonts.robotoTextTheme(),
          useMaterial3: true,
        ),
        home: const OnboardView(),
      ),
    );
  }
}
