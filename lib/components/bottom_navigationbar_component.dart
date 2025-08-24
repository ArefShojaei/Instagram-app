import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';

class BottomNavigationbarComponent extends StatelessWidget {
  final List<IconButtonWidget> children;

  const BottomNavigationbarComponent({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: MediaQuery.of(context).size.width,
      height: 80,
      borderRadius: 24,
      blur: 20,
      alignment: Alignment.center,
      border: 0,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(AppColorConstant.secondry).withOpacity(0.8),
          Color(AppColorConstant.secondry).withOpacity(0.08),
        ],
        stops: [0.1, 1],
      ),
      borderGradient: LinearGradient(
        colors: [
          Color(AppColorConstant.secondry).withOpacity(0.5),
          Color(AppColorConstant.secondry).withOpacity(0.5),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
