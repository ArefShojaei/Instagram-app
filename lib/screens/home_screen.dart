import 'package:flutter/material.dart';
import 'package:instagram/components/appbar_component.dart';
import 'package:instagram/components/story_list_component.dart';
import 'package:instagram/components/post_list_component.dart';
import 'package:instagram/components/bottom_navigationbar_component.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';
import 'package:instagram/widgets/logo_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        paddingLeft: 16,
        paddingRight: 16,
        logo: const LogoWidget(src: "assets/images/logo.png"),
        actions: const <IconButtonWidget>[
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/notification.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/send.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            StoryListComponent(),
            SizedBox(height: 32),
            PostListComponent(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationbarComponent(
        children: <IconButtonWidget>[
          IconButtonWidget(
            icon: IconWidget(
              src: "assets/icons/bold/home.svg",
              color: Color(AppColorConstant.accent),
            ),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/search.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/add.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/heart.svg"),
          ),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/profile.svg"),
          ),
        ],
      ),
    );
  }
}
