import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/appbar_component.dart';
import 'package:instagram/components/bottom_navigationbar_component.dart';
import 'package:instagram/constants/app_color_constant.dart';
import 'package:instagram/widgets/icon_button_widget.dart';
import 'package:instagram/widgets/icon_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 16),
            Text(
              "@ArefShojaei",
              style: GoogleFonts.poppins(
                color: Color(AppColorConstant.white),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            IconWidget(
              src: "assets/icons/bold/verified.svg",
              color: Color(AppColorConstant.accent),
            ),
          ],
        ),
        actions: [
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/setting.svg"),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 48),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(AppColorConstant.white),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/134844185?v=4",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Aref Shojaei",
                    style: GoogleFonts.poppins(
                      color: Color(AppColorConstant.white),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Software developer",
                    style: GoogleFonts.poppins(
                      color: Color(AppColorConstant.gray),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          "68",
                          style: TextStyle(
                            color: Color(AppColorConstant.white),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Color(AppColorConstant.gray),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          "2.3K",
                          style: TextStyle(
                            color: Color(AppColorConstant.white),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Color(AppColorConstant.gray),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      icon: IconWidget(
                        src: "assets/icons/bold/image.svg",
                        color: Color(AppColorConstant.accent),
                      ),
                    ),
                    Text(
                      "68",
                      style: TextStyle(
                        color: Color(AppColorConstant.accent),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      icon: IconWidget(src: "assets/icons/linear/video.svg"),
                    ),
                    Text(
                      "14",
                      style: TextStyle(
                        color: Color(AppColorConstant.white),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      icon: IconWidget(src: "assets/icons/linear/link.svg"),
                    ),
                    Text(
                      "3",
                      style: TextStyle(
                        color: Color(AppColorConstant.white),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      icon: IconWidget(src: "assets/icons/linear/userTag.svg"),
                    ),
                    Text(
                      "129",
                      style: TextStyle(
                        color: Color(AppColorConstant.white),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      icon: IconWidget(src: "assets/icons/linear/bookmark.svg"),
                    ),
                    Text(
                      "+500",
                      style: TextStyle(
                        color: Color(AppColorConstant.white),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post4.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post6.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/explore/post8.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationbarComponent(
        children: <IconButtonWidget>[
          IconButtonWidget(
            icon: IconWidget(src: "assets/icons/linear/home.svg"),
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
            icon: IconWidget(
              src: "assets/icons/bold/profile.svg",
              color: Color(AppColorConstant.accent),
            ),
          ),
        ],
      ),
    );
  }
}
