import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article10_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article11_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article12_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/bookmark_widgets/bookmark_news.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_screens/all_articles/article13_page.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  var currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE9EEFA),
        toolbarHeight: 70.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.w, bottom: 16.h),
              child: Text(
                "Bookmark",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w, bottom: 26.h),
              child: SvgPicture.asset(
                "assets/icons/bookmark_page/edit.svg",
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32.w,right: 32.w,top: 24.h),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>Article10Page()));
                          },
                          child: BookmarkNews(
                              text1: "How to Setup Your Workspace",
                              text2: "Interior",
                              image: "assets/images/bookmark_page/image1.png"),
                        ),
                        24.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>Article11Page()));
                          },
                          child: BookmarkNews(
                              text1:
                                  "Discovering Hidden Gems: 8 Off-The-Beaten-Path Travel Destinations",
                              text2: "Travel",
                              image: "assets/images/bookmark_page/image2.png"),
                        ),
                        24.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>Article12Page()));
                          },
                          child: BookmarkNews(
                              text1:
                                  "Exploring the World's Best Beaches: Top 5 Picks",
                              text2: "Travel",
                              image: "assets/images/bookmark_page/image3.png"),
                        ),
                        24.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>Article13Page()));
                          },
                          child: BookmarkNews(
                              text1:
                                  "Travel Destinations That Won't Break the Bank",
                              text2: "Travel",
                              image: "assets/images/bookmark_page/image4.png"),
                        ),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "How Working Remotely Will Make You More Happy",
                            text2: "Business",
                            image: "assets/images/bookmark_page/image5.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "Destinations for Authentic Local Experiences",
                            text2: "Business",
                            image: "assets/images/bookmark_page/image6.png"),
                        24.height(),
                        BookmarkNews(
                            text1: "A Guide to Seasonal Gardening",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image7.png"),
                        24.height(),
                        BookmarkNews(
                            text1: "A Guide to Seasonal Gardening",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image8.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
