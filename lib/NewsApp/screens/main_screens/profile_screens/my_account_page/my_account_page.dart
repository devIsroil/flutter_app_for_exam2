import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/profile_screens/profile_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          22.height(),
          SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                20.width(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(CupertinoPageRoute(
                        builder: (context) => const ProfilePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(14.sp),
                    width: 44.w,
                    height: 44.h,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/icons/my_account_page/left_arrow.svg",
                      width: 16.w,
                      height: 16.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                16.width(),
                Container(
                  width: 270.w,
                  alignment: Alignment.center,
                  child: Text(
                    "My Account",
                    style: GoogleFonts.inter(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          24.height(),
          Column(
            children: [
              Container(
                width: 366.w,
               // height: 64.h,
                padding: EdgeInsets.symmetric(vertical: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Address",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "le*******gds@gmail.com",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6D6265),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/my_account_page/right_arrow.svg",
                      width: 14.w,
                      height: 14.h,
                    )
                  ],
                ),
              ),
              4.height(),
              Container(
                width: 366.w,
                //height: 64.h,
                padding: EdgeInsets.symmetric(vertical: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect Account",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Google, Facebook",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6D6265),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/my_account_page/right_arrow.svg",
                      width: 14.w,
                      height: 14.h,
                    )
                  ],
                ),
              ),
              4.height(),
              Container(
                width: 366.w,
                //height: 64.h,
                padding: EdgeInsets.symmetric(vertical: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Password",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SvgPicture.asset(
                        "assets/icons/my_account_page/right_arrow.svg",
                        width: 14.w,
                        height: 14.h)
                  ],
                ),
              ),
              16.height(),
              Padding(
                padding: EdgeInsets.only(left: 32.w,right: 37.w),
                child: const Divider(
                  thickness: 1,
                  color: Color(0xffE2E0E0),
                ),
              ),
              16.height(),
              Container(
                width: 366.w,
                //height: 64.h,
                padding: EdgeInsets.symmetric(vertical: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delete Account",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffE02607)
                          ),
                        ),
                        Text(
                          "Permanently delete your account.",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6D6265),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/my_account_page/right_arrow.svg",
                      width: 14.w,
                      height: 14.h,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
