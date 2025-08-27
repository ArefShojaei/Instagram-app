import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_widget.dart';
import 'package:dotted_border/dotted_border.dart';

class YourStoryWidget extends StatelessWidget {
  final String name;

  const YourStoryWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: SizedBox(
              width: 80,
              height: 80,
              child: DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  dashPattern: [4, 4],
                  strokeWidth: 2,
                  radius: Radius.circular(50),
                  color: Color(AppColorConstant.secondry2),
                ),
                child: Center(
                  child: IconWidget(src: "assets/icons/linear/add.svg"),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(name, style: TextStyle(color: Color(AppColorConstant.white))),
        ],
      ),
    );
  }
}
