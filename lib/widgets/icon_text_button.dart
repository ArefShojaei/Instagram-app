import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';

class IconTextButton extends StatelessWidget {
  final bool isRowAlign;
  final IconWidget icon;
  final String value;
  final VoidCallback? onClick;

  const IconTextButton({
    super.key,
    required this.value,
    required this.icon,
    required this.isRowAlign,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return isRowAlign
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButtonWidget(icon: icon, onClick: onClick),
              Text(
                value,
                style: TextStyle(color: Color(AppColorConstant.white)),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButtonWidget(icon: icon, onClick: onClick),
              Text(
                value,
                style: TextStyle(color: Color(AppColorConstant.white)),
              ),
            ],
          );
  }
}
