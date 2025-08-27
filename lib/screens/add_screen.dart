import 'package:flutter/material.dart';
import 'package:instagram/components/appbar_component.dart';
import 'package:instagram/components/bottom_navigationbar_component.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/enums/page_route_enum.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: Text(
          "Add",
          style: TextStyle(color: Color(AppColorConstant.white), fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Soon...",
          style: TextStyle(color: Color(AppColorConstant.white)),
        ),
      ),
      bottomNavigationBar: BottomNavigationbarComponent(activePageIndex: PageRouteEnum.add.index,),
    );
  }
}
