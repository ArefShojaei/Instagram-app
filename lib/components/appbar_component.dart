import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget>? actions;
  final bool? centerTitle;

  const AppbarComponent({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle
  });

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      title: title,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
