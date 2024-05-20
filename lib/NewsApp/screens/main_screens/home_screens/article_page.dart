import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Container(
                  width: 430.w,
                  height: 316.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/article_page/image1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 269.h,
                child: Container(
                  padding: EdgeInsets.only(top: 24.h, left: 20.w, right: 20.w),
                  width: 430.w,
                  height: MediaQuery.of(context).size.height - 269.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.r),
                      topRight: Radius.circular(32.r),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "See How the Forest is Helping Our World",
                        style: GoogleFonts.inter(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff231F20),
                        ),
                      ),
                      Gap(16.h),
                      Row(
                        children: [
                          Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                                "assets/images/article_page/man.png"),
                          ),
                          Gap(8.w),
                          Text(
                            "Harry Harper · Apr 12, 2023",
                            style: GoogleFonts.inter(
                              color: Color(0xff6D6265),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.only(bottom: 68.h,top: 24.h),
                          children: [
                            Text(
                              "Forests are one of the most important natural resources that our planet possesses. Not only do they provide us with a diverse range of products such as timber, medicine, and food, but they also play a vital role in mitigating climate change and maintaining the overall health of our planet's ecosystems. In this article, we will explore the ways in which forests are helping our world. One of the most important roles that forests play is in absorbing carbon dioxide from the atmosphere. Trees absorb carbon dioxide through photosynthesis and store it in their trunks, branches, and leaves. This carbon sequestration helps to mitigate climate change by reducing the amount of greenhouse gases in the atmosphere. Forests are estimated to absorb approximately 2.4 billion tonnes of carbon dioxide each year, which is equivalent to around 10% of global greenhouse gas emissions. Forests also play a crucial role in maintaining the water cycle. Trees absorb water from the soil and release it back into the atmosphere through a process known as transpiration. This helps to regulate the local climate and prevents soil erosion and flooding. Forests also act as natural water filters, helping to purify water that flows through them. Forests are also important sources of biodiversity. They provide habitat for countless species of plants and animals, many of which are found nowhere else on earth. Forests also provide a source of food and medicine for many communities around the world. In fact, it is estimated that around 80% of the world's population relies on traditional medicine derived from plants, many of which are found in forests. In addition to their ecological and cultural importance, forests also provide economic benefits. They provide jobs and income for millions of people around the world, particularly in rural areas. Forests also provide timber, paper, and other products that are essential to many industries.",
                              style: GoogleFonts.merriweather(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff231F20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              864.height(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 430.w,
            height: 68.h,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 26.h, left: 46.w, bottom: 26.h, right: 26.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              CupertinoPageRoute(
                                  builder: (context) => MainPage()));
                        },
                        child: Container(
                          width: 44.w,
                          child: SvgPicture.asset(
                              "assets/icons/article_page/left_arrow.svg",
                              width: 16.w,
                              height: 16.h),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/article_page/hands-clapping.svg",
                          width: 20.w,
                          height: 20.h),
                      8.width(),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff6D6265)),
                      ),
                      26.width(),
                      SvgPicture.asset("assets/icons/article_page/bookmark.svg",
                          width: 16.w, height: 16.h),
                      26.width(),
                      SvgPicture.asset("assets/icons/article_page/share.svg",
                          width: 16.w, height: 14.h),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
