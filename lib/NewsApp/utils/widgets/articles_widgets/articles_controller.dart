import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/bottom_navigation_bar_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlesController extends StatelessWidget {
  String image;
  String title;
  String avatar;
  String text1;
  String text2;
  final Widget bottomNavigationBar;

  ArticlesController({super.key,required this.image,required this.title,required this.avatar,required this.text1,required this.text2, required this.bottomNavigationBar,});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    AssetImage(image),
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
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff231F20),
                      ),
                    ),
                    16.height(),
                    Row(
                      children: [
                        Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                              avatar),
                        ),
                        8.width(),
                        Text(
                          text1,
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
                            text2,
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
    );
  }
}
