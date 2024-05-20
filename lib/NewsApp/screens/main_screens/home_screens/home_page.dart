import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../utils/widgets/home_widgets/scroll_container.dart';
import 'article_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffE9EEFA),
          toolbarHeight: 60.h,
          title: Padding(
            padding:  EdgeInsets.only(left: 12.w,right: 12.w,bottom: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning\nTrung",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6D6265)),
                    ),
                     const Text(
                      "Sun 9 April, 2023",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/sun.png",
                      width: 32.w,
                      height: 26.h,
                    ),
                    Text("Sunny 32°C",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp,color: Color(0xff6D6265)),),
                  ],
                )
              ],
            ),
          )),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ScrollContainer(
                          image: "assets/images/home_page/image1.jpg",
                          text1: "Experience the\nSerenity of Japan's...",
                          text2: "Technology"),
                      //24.width(),
                      ScrollContainer(
                          image: "assets/images/home_page/image2.jpg",
                          text1: "Discovering the Magic\nof Paris...",
                          text2: "History"),
                      //24.width(),
                    ],
                  ),
                ),
                30.height(),
                Padding(
                  padding:  EdgeInsets.only(left: 32.w, right: 32.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Just For You",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "See More",
                        style: TextStyle(
                            color: const Color(0xff2D5BD0),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      )
                    ],
                  ),
                ),
                16.height(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ScrollContainer(
                          image: "assets/images/home_page/image3.png",
                          text1:
                          "Visiting scenic spots\nand explore new areas",
                          text2: "Nature"),
                      //24.width(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const ArticlePage()));
                        },
                        child: ScrollContainer(
                            image: "assets/images/home_page/image4.jpg",
                            text1: "See How the Forest is\nHelping Our World",
                            text2: "Nature"),
                      ),
                      //24.width(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
