import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/constants/app_color_constant.dart';

class IconWidget extends StatelessWidget {
  final String src;
  final Color? color;

  const IconWidget({super.key, required this.src, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(src, color: color ?? Color(AppColorConstant.white));
  }
}
