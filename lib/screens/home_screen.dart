import 'package:flutter/material.dart';
import 'package:instagram/components/appbar_component.dart';
import 'package:instagram/components/story_list_component.dart';
import 'package:instagram/components/post_list_component.dart';
import 'package:instagram/components/bottom_navigationbar_component.dart';
import 'package:instagram/enums/page_route_enum.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';
import 'package:instagram/widgets/logo_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: LogoWidget(src: "assets/images/logo.png"),
        actions: const <Widget>[
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/notification.svg"),
          ),
          SizedBox(width: 16),
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/send.svg"),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            StoryListComponent(),
            SizedBox(height: 24),
            PostListComponent(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationbarComponent(activePageIndex: PageRouteEnum.home.index,),
    );
  }
}
