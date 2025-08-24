import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String src;
  
  const LogoWidget({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return Image.asset(src);
  }
}