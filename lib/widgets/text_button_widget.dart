import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';

class TextButtonWidget extends StatelessWidget {
  final String value;
  final Function handler;

  const TextButtonWidget({
    super.key,
    required this.value,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(AppColorConstant.naturalGray)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "More",
          style: TextStyle(color: Color(AppColorConstant.naturalGray)),
        ),
      ),
    );
  }
}
