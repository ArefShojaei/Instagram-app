import 'package:flutter/material.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/logo_widget.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  final LogoWidget logo;
  final List<IconButtonWidget> actions;
  final double paddingLeft;
  final double paddingRight;

  const AppbarComponent({
    super.key,
    required this.logo,
    required this.actions,
    required this.paddingLeft,
    required this.paddingRight,
  });

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SizedBox(width: paddingLeft),
          logo,
        ],
      ),
      actions: [
        ...actions,
        SizedBox(width: paddingRight),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
