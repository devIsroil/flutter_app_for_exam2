import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/articles_controller.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/bottom_navigation_bar_controller.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/bookmark_widgets/bookmark_bottom_navigation_bar.dart';
class Article10Page extends StatelessWidget {
  const Article10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ArticlesController(image: "assets/images/bookmark_page/image1.png",title: "How to Setup Your Worksapce",avatar: "assets/images/explore_page/woman2.png",text1: "Melissa White · May 7, 2023",text2: "",bottomNavigationBar: const BottomNavigationBarController(),),
        bottomNavigationBar: const BookmarkBottomNavigationBar());
  }
}