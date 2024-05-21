
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/profile_screens/clapped_articles_page/clapped_articles_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/profile_screens/my_account_page/my_account_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/profile_screens/read_articles_page/read_articles_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.h, top: 83.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 366.w,
              height: 120.h,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 78.r,
                    child: Image.asset("assets/images/profile_page/avatar.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dianne Russell",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 24.sp),
                      ),
                      4.height(),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/profile_page/reading_badge.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          6.width(),
                          Text(
                            "Bookworm",
                            style: GoogleFonts.inter(
                                color: const Color(0xff577CD9),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            24.height(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 84.w,
                     // height: 57.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Article Read",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: const Color(0xff8A8184),
                            ),
                          ),
                          Text(
                            "320",
                            style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    48.width(),
                    SizedBox(
                      width: 113.w,
                      //height: 57.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Streak",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: const Color(0xff8A8184),
                            ),
                          ),
                          Text(
                            "345 Days",
                            style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    48.width(),
                    SizedBox(
                      width: 46.w,
                      //height: 57.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Level",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: const Color(0xff8A8184),
                            ),
                          ),
                          Text(
                            "125",
                            style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffE2E0E0),
            ),
            24.height(),
            Text(
              "Reading History",
              style: GoogleFonts.inter(
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            15.height(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const ClappedArticlesPage()));
              },
              child: SizedBox(
                width: 366.w,
                height: 42.h,
                child: Row(
                  children: [
                    Text(
                      "Clapped Articles",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                        "assets/icons/profile_page/right_arrow.svg"),
                  ],
                ),
              ),
            ),
            15.height(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const ReadArticlesPage()));
              },
              child: SizedBox(
                width: 366.w,
                height: 42.h,
                child: Row(children: [
                  Text(
                    "Read Articles",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/profile_page/right_arrow.svg"),
                ]),
              ),
            ),
            27.height(),
            Text(
              "Settings",
              style: GoogleFonts.inter(
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            15.height(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => const MyAccountPage()));
              },
              child: SizedBox(
                width: 366.w,
                height: 42.h,
                child: Row(children: [
                  Text(
                    "My Account",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/profile_page/right_arrow.svg"),
                ]),
              ),
            ),
            15.height(),
            SizedBox(
              width: 366.w,
              height: 41.h,
              child: Row(children: [
                Text(
                  "Privacy Settings",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                const Spacer(),
                SvgPicture.asset("assets/icons/profile_page/right_arrow.svg"),
              ]),
            ),
            15.height(),
            SizedBox(
              width: 366.w,
              height: 42.w,
              child: Row(children: [
                Text(
                  "Offline Reading",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                const Spacer(),
                SvgPicture.asset("assets/icons/profile_page/right_arrow.svg"),
              ]),
            ),
            15.height(),
            SizedBox(
              width: 366.w,
              height: 42.h,
              child: Row(children: [
                Text(
                  "About Us",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                const Spacer(),
                SvgPicture.asset("assets/icons/profile_page/right_arrow.svg"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
