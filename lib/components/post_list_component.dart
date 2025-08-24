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
          publishedTime: "2h ago",
          thumbnail: "assets/images/post1.png",
          meta : {
            "likes" : 640,
            "isLiked" : true
          }
        ),
        PostWidget(
          avatar: "assets/images/user5.png",
          name: "Saman",
          publishedTime: "2h ago",
          thumbnail: "assets/images/post1.png",
          meta: {
            "likes" : 239,
            "isLiked" : false
          },
        ),
      ],
    );
  }
}
