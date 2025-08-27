import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/enums/page_route_enum.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/add_screen.dart';
import 'package:instagram/screens/explore_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/profile_screen.dart';

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
          backgroundColor: Color(AppColorConstant.primary),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: PageRouteEnum.home.routeKey,
      routes: {
        PageRouteEnum.home.routeKey: (context) => HomeScreen(),
        PageRouteEnum.explore.routeKey: (context) => ExploreScreen(),
        PageRouteEnum.add.routeKey: (context) => AddScreen(),
        PageRouteEnum.activity.routeKey: (context) => ActivityScreen(),
        PageRouteEnum.profile.routeKey: (context) => ProfileScreen(),
      },
    );
  }
}
