import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_widget.dart';

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
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(AppColorConstant.secondry),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: IconWidget(src: "assets/icons/linear/add.svg"),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            name,
            style: TextStyle(color: Color(AppColorConstant.naturalWhite)),
          ),
        ],
      ),
    );
  }
}
