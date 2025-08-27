import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';

class TextButtonWidget extends StatelessWidget {
  final String value;
  final VoidCallback? onClick;

  const TextButtonWidget({
    super.key,
    required this.value,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(AppColorConstant.gray)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          value,
          style: TextStyle(color: Color(AppColorConstant.gray)),
        ),
      ),
      onTap: onClick,
    );
  }
}
