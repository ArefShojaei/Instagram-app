import 'package:flutter/material.dart';
import 'package:instagram/widgets/icon_widget.dart';

class IconButtonWidget extends StatelessWidget {
  final IconWidget icon;
  final VoidCallback? onClick;

  const IconButtonWidget({super.key, required this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(12),
      onPressed: onClick,
      icon: icon,
    );
  }
}
