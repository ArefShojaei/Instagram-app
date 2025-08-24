import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_widget.dart';

class PostListComponent extends StatelessWidget {
  const PostListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PostWidget(
          avatar: "assets/images/user1.png",
          name: "Ali",
          location: "2h ago",
          thumbnail: "assets/images/post1.png",
          likes: 640,
        ),
        PostWidget(
          avatar: "assets/images/user5.png",
          name: "Saman",
          location: "2h ago",
          thumbnail: "assets/images/post1.png",
          likes: 239,
        ),
      ],
    );
  }
}
