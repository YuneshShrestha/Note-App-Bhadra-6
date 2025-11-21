import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app_starter/view/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        textTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
