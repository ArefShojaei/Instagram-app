import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/enums/page_route_enum.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';

class BottomNavigationbarComponent extends StatefulWidget {
  final int activePageIndex;

  const BottomNavigationbarComponent({
    super.key,
    required this.activePageIndex,
  });

  @override
  State<BottomNavigationbarComponent> createState() =>
      _BottomNavigationbarComponentState();
}

class _BottomNavigationbarComponentState
    extends State<BottomNavigationbarComponent> {
  late int _selectedPageIndex;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = widget.activePageIndex;
  }

  final List<String> _inActiveIcons = [
    "assets/icons/linear/home.svg",
    "assets/icons/linear/search.svg",
    "assets/icons/linear/add.svg",
    "assets/icons/linear/heart.svg",
    "assets/icons/linear/profile.svg",
  ];

  final List<String> _activeIcons = [
    "assets/icons/bold/home.svg",
    "assets/icons/bold/search.svg",
    "assets/icons/bold/add.svg",
    "assets/icons/bold/heart.svg",
    "assets/icons/bold/profile.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: MediaQuery.of(context).size.width,
      height: 80,
      borderRadius: 24,
      blur: 20,
      alignment: Alignment.center,
      border: 0,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(AppColorConstant.secondry).withOpacity(0.8),
          Color(AppColorConstant.secondry).withOpacity(0.08),
        ],
        stops: [0.1, 1],
      ),
      borderGradient: LinearGradient(
        colors: [
          Color(AppColorConstant.secondry).withOpacity(0.5),
          Color(AppColorConstant.secondry).withOpacity(0.5),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              icon: IconWidget(
                src: _getIconPath(PageRouteEnum.home.index),
                color: _getIconColor(PageRouteEnum.home.index),
              ),
              onClick: () => Navigator.pushReplacementNamed(
                context,
                PageRouteEnum.home.routeKey,
              ),
            ),
            IconButtonWidget(
              icon: IconWidget(
                src: _getIconPath(PageRouteEnum.explore.index),
                color: _getIconColor(PageRouteEnum.explore.index),
              ),
              onClick: () => Navigator.pushReplacementNamed(
                context,
                PageRouteEnum.explore.routeKey,
              ),
            ),
            IconButtonWidget(
              icon: IconWidget(
                src: _getIconPath(PageRouteEnum.add.index),
                color: _getIconColor(PageRouteEnum.add.index),
              ),
              onClick: () => Navigator.pushReplacementNamed(
                context,
                PageRouteEnum.add.routeKey,
              ),
            ),
            IconButtonWidget(
              icon: IconWidget(
                src: _getIconPath(PageRouteEnum.activity.index),
                color: _getIconColor(PageRouteEnum.activity.index),
              ),
              onClick: () => Navigator.pushReplacementNamed(
                context,
                PageRouteEnum.activity.routeKey,
              ),
            ),
            IconButtonWidget(
              icon: IconWidget(
                src: _getIconPath(PageRouteEnum.profile.index),
                color: _getIconColor(PageRouteEnum.profile.index),
              ),
              onClick: () => Navigator.pushReplacementNamed(
                context,
                PageRouteEnum.profile.routeKey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getIconPath(int index) {
    return _selectedPageIndex == index
        ? _activeIcons[index]
        : _inActiveIcons[index];
  }

  Color? _getIconColor(int index) {
    return _selectedPageIndex == index ? Color(AppColorConstant.accent) : null;
  }
}
