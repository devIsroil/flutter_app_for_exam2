import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/explore_screens/explore_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import '../../../screens/main_page.dart';

class ExploreBottomNavigationBar extends StatelessWidget {
  const ExploreBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        Navigator.of(context).pop(
                            CupertinoPageRoute(
                                builder: (context) => ExplorePage()));
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
    );
  }
}
