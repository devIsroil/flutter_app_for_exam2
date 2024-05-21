import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 430.w,
                    height: 538.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/welcome_page/building_img.png"),
                          fit: BoxFit.cover),
                      gradient: LinearGradient(
                        colors: [Color(0xff2E53D7), Color(0xff7991E5)],
                        begin: Alignment.topCenter,
                        end: AlignmentDirectional.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 511.h,
                  child: Container(
                    width: 430.w,
                   // height: 421.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32.r),
                            topLeft: Radius.circular(32.r))),
                    child: Padding(
                      padding:
                      EdgeInsets.only(top: 52.h, left: 32.w, right: 32.w),
                      child: Column(
                        children: [
                          Text(
                            "Get The Latest News And Updates",
                            style: GoogleFonts.inter(
                                fontSize: 32.sp, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          16.height(),
                          Text(
                            "From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.",
                            style: GoogleFonts.schibstedGrotesk(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff6D6265)),
                            textAlign: TextAlign.center,
                          ),
                          24.height(),
                      ZoomTapAnimation(
                        child: InkWell(
                          onTap: () {
                            print('ghhtyt');
                            Navigator.push(context, CupertinoPageRoute(builder: (context) {
                              return const MainPage();
                            }));
                          },
                          child: Container(
                            width: 145.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(128.r),
                                color: const Color(0xff2D5BD0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Explore",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.sp,
                                      color: Colors.white),
                                ),
                                4.width(),
                                const Icon(
                                  CupertinoIcons.arrow_right,
                                  size: 16,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
