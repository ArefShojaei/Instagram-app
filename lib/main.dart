import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/screens/home_screen.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(AppColorConstant.primary),
        appBarTheme: AppBarTheme(
            surfaceTintColor: Color(AppColorConstant.primary),
            backgroundColor: Color(AppColorConstant.primary)
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
