import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';

class UserStoryWidget extends StatelessWidget {
  final String name;
  final String avatar;
  final bool isActive;

  const UserStoryWidget({
    super.key,
    required this.name,
    required this.avatar,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: isActive
                    ? Color(AppColorConstant.accent)
                    : Color(AppColorConstant.secondry),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(avatar, fit: BoxFit.cover,),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          name,
          style: TextStyle(color: Color(AppColorConstant.naturalWhite)),
        ),
      ],
    );
  }
}
