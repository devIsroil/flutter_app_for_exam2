import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/bookmark_widgets/bookmark_news.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Color(0xffE9EEFA),
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 16.h),
              child: SizedBox(
                height: 40.h,
                child: FittedBox(
                  child: Text(
                    "Bookmark",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
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
                        BookmarkNews(
                            text1: "How to Setup Your\nWorksapce",
                            text2: "Interior",
                            image: "assets/images/bookmark_page/image1.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "Discovering Hidden Gems:\n8 Off-The-Beaten-Path...",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image2.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "Exploring the World's Best\nBeaches: Top 5 Picks",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image3.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "Travel Destinations That\nWon't Break the Bank",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image4.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "How Working Remotely\nWill Make You More Happy",
                            text2: "Business",
                            image: "assets/images/bookmark_page/image5.png"),
                        24.height(),
                        BookmarkNews(
                            text1:
                                "Destinations for Authentic\nLocal Experiences",
                            text2: "Business",
                            image: "assets/images/bookmark_page/image6.png"),
                        24.height(),
                        BookmarkNews(
                            text1: "A Guide to Seasonal\nGardening",
                            text2: "Travel",
                            image: "assets/images/bookmark_page/image7.png"),
                        24.height(),
                        BookmarkNews(
                            text1: "A Guide to Seasonal\nGardening",
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
