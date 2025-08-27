import 'package:flutter/material.dart';
import 'package:instagram/components/appbar_component.dart';
import 'package:instagram/components/bottom_navigationbar_component.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';

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
      bottomNavigationBar: BottomNavigationbarComponent(
        children: <IconButtonWidget>[
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/home.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/search.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(
              src: "assets/icons/bold/add.svg",
              color: Color(AppColorConstant.accent),
            ),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/heart.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/profile.svg"),
          ),
        ],
      ),
    );
  }
}
