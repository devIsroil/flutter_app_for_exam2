import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/article_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrollContainer extends StatelessWidget {
  late String image;
  late String text1;
  late String text2;

  ScrollContainer({required this.image, required this.text1, required this.text2});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 32.w,top: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 269.w,
            height: 269.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(
                    image), fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600),
                ),
                8.height(),
                Text(
                  text2,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff6D6265)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
