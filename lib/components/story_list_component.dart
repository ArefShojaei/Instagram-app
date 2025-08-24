import 'package:flutter/material.dart';
import 'package:instagram/widgets/story/your_story_widget.dart';
import 'package:instagram/widgets/story/user_story_widget.dart';

class StoryListComponent extends StatelessWidget {
  const StoryListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          YourStoryWidget(name: "Your story"),
          UserStoryWidget(
            name: "Ali",
            avatar: "assets/images/user1.png",
            isActive: true,
          ),
          UserStoryWidget(
            name: "Roya",
            avatar: "assets/images/user2.png",
            isActive: false,
          ),
          UserStoryWidget(
            name: "Mehdi",
            avatar: "assets/images/user3.png",
            isActive: false,
          ),
          UserStoryWidget(
            name: "Reza",
            avatar: "assets/images/user4.png",
            isActive: false,
          ),
        ],
      ),
    );
  }
}
