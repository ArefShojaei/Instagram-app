import 'package:flutter/material.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_text_button.dart';
import 'package:instagram/widgets/icon_widget.dart';
import 'package:instagram/widgets/text_button_widget.dart';

class PostWidget extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  final String thumbnail;
  final Map meta;

  const PostWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.publishedTime,
    required this.thumbnail,
    required this.meta,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(AppColorConstant.secondry), width: 2),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(AppColorConstant.naturalWhite),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(avatar, fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Color(AppColorConstant.naturalWhite),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        publishedTime,
                        style: TextStyle(
                          color: Color(AppColorConstant.naturalGray),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButtonWidget(
                icon: IconWidget(src: "assets/icons/linear/menu-meatballs.svg"),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 12),
            width: 400,
            height: 210,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(thumbnail, fit: BoxFit.cover),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  IconTextButton(
                    value: meta["likes"].toString(),
                    icon: meta["isLiked"]
                        ? IconWidget(
                            src: "assets/icons/bold/heart.svg",
                            color: Colors.red,
                          )
                        : IconWidget(src: "assets/icons/linear/heart.svg"),
                    isRowAlign: true,
                  ),
                  IconButtonWidget(
                    icon: IconWidget(src: "assets/icons/linear/message.svg"),
                  ),
                  IconButtonWidget(
                    icon: IconWidget(src: "assets/icons/linear/send.svg"),
                  ),
                ],
              ),
              IconButtonWidget(
                icon: IconWidget(src: "assets/icons/linear/Bookmark 3.svg"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 72,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(AppColorConstant.primary),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              "assets/images/user-post1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          left: 20,
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(AppColorConstant.primary),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              "assets/images/user-post2.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(AppColorConstant.primary),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              "assets/images/user-post3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Looking forward to...",
                    style: TextStyle(
                      color: Color(AppColorConstant.naturalWhite),
                    ),
                  ),
                ],
              ),
              TextButtonWidget(value: "More", handler: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
