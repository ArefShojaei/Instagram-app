import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';

class IconTextButton extends StatelessWidget {
  final bool isRowAlign;
  final IconWidget icon;
  final String value;

  const IconTextButton({super.key, required this.value, required this.icon, required this.isRowAlign});

  @override
  Widget build(BuildContext context) {
    return this.isRowAlign ? Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButtonWidget(icon: icon),
        Text(
          value,
          style: TextStyle(color: Color(AppColorConstant.naturalWhite)),
        ),
      ],
    ): Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButtonWidget(icon: icon),
        Text(
          value,
          style: TextStyle(color: Color(AppColorConstant.naturalWhite)),
        ),
      ],
    );
  }
}
