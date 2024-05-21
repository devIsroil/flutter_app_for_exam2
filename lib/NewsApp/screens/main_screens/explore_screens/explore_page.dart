import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article5_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article7_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/all_articles/article8_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/explore_widgets/card_scroll.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/explore_widgets/containers_about_areas.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../home_screens/all_articles/article6_page.dart';
import '../home_screens/all_articles/article9_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String selectedCard = "Travel";
  var currentIndex = 1;

  void selectCard(String card) {
    setState(() {
      selectedCard = card;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE9EEFA),
        toolbarHeight: 70.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 16.h,top: 12.h),
              child: Text(
                "Explore",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 26.w, bottom: 26.h),
              child: SvgPicture.asset(
                "assets/icons/explore_page/search.svg",
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          16.height(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      selectCard("Travel");
                    },
                    child: CardScroll(
                      text: "Travel",
                      colorCard: selectedCard == "Travel"
                          ? const Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      selectCard("Technology");
                    },
                    child: CardScroll(
                      text: "Technology",
                      colorCard: selectedCard == "Technology"
                          ? const Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      selectCard("Business");
                    },
                    child: CardScroll(
                      text: "Business",
                      colorCard: selectedCard == "Business"
                          ? const Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      selectCard("Entertainment");
                    },
                    child: CardScroll(
                      text: "Entertainment",
                      colorCard: selectedCard == "Entertainment"
                          ? const Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32.w,right: 32.w,top: 24.h),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article5Page()));
                          },
                          child: Container(
                            width: 366.w,
                            height: 206.h,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/explore_page/image1.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        16.height(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Uncovering the Hidden Gems\nof the Amazon Forest",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 24.sp),
                            ),
                            12.height(),
                            Row(
                              children: [
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration:
                                      const BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(
                                      "assets/images/explore_page/man.png"),
                                ),
                                8.width(),
                                Text(
                                  "Mr.Lana Kub · May 1, 2023",
                                  style: GoogleFonts.inter(
                                    color: const Color(0xff6D6265),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        24.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article6Page()));
                          },
                          child: AboutAreas(
                              text1:
                                  "Experience the Serenity of Japan's Traditional Countryside",
                              text2: "Hilda Friesen · May 3, 2023",
                              avatar: "assets/images/explore_page/woman1.png",
                              image: "assets/images/explore_page/image2.png"),
                        ),
                        26.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article7Page()));
                          },
                          child: AboutAreas(
                              text1:
                                  "A Journey Through Time: Discovering the Nile river",
                              text2: "Melissa White · May 7, 2023",
                              avatar: "assets/images/explore_page/woman2.png",
                              image: "assets/images/explore_page/image3.png"),
                        ),
                        26.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article8Page()));
                          },
                          child: AboutAreas(
                              text1:
                                  "Chasing the Northern Lights: A Winter in Finland",
                              text2: "Jeannie · May 12, 2023",
                              avatar: "assets/images/explore_page/woman3.png",
                              image: "assets/images/explore_page/image4.png"),
                        ),
                        26.height(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const Article9Page()));
                          },
                          child: AboutAreas(
                              text1:
                                  "A Guide to Seasonal Gardening",
                              text2: "Sophie Larkin · May 10, 2023",
                              avatar: "assets/images/clapped_articles_page/avatar4.png",
                              image: "assets/images/bookmark_page/image8.png"),
                        ),
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
