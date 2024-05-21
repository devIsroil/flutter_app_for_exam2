import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article1_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article2_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article3_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/widgets/home_widgets/scroll_container.dart';
import 'all_articles/article4_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffE9EEFA),
          toolbarHeight: 70.h,
          title: Padding(
            padding:  EdgeInsets.only(left: 12.w,right: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning\nTrung",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6D6265)),
                    ),
                      Text(
                      "Sun 9 April, 2023",
                      style: GoogleFonts.inter(
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
                    Text("Sunny 32°C",style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 14.sp,color: const Color(0xff6D6265)),),
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
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article1Page(
                          )));
                        },
                        child: ScrollContainer(
                            image: "assets/images/home_page/image1.jpg",
                            text1: "Experience the\nSerenity of Japan's...",
                            text2: "Technology"),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article2Page()));
                        },
                        child: ScrollContainer(
                            image: "assets/images/home_page/image2.jpg",
                            text1: "Discovering the Magic\nof Paris...",
                            text2: "History"),
                      ),
                    ],
                  ),
                ),
                30.height(),
                Padding(
                  padding:  EdgeInsets.only(left: 32.w,right: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Just For You",
                        style: GoogleFonts.inter(
                            fontSize: 24.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "See More",
                        style: GoogleFonts.inter(
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
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article3Page()));
                        },
                        child: ScrollContainer(
                            image: "assets/images/home_page/image3.png",
                            text1:
                            "The Pros and Cons of\nRemote Work",
                            text2: "Nature"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const Article4Page()));
                        },
                        child: ScrollContainer(
                            image: "assets/images/home_page/image4.jpg",
                            text1: "See How the Forest is\nHelping Our World",
                            text2: "Nature"),
                      ),
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
