import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/bookmark_screens/bookmark_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/explore_screens/explore_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/home_screens/home_page.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/main_screens/profile_screens/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomePage(),
    const ExplorePage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: double.infinity,
            height: 80,
            color: Colors.transparent,
            child: SalomonBottomBar(
              backgroundColor: Colors.transparent,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                SalomonBottomBarItem(
                  icon: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/home-alt.svg",
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                  ),
                  title:  Text("Home",style: GoogleFonts.inter(),),
                  selectedColor: Colors.black,
                ),
                SalomonBottomBarItem(
                  icon: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset("assets/icons/globe-asia.svg",
                        width: 24, height: 24),
                  ),
                  title:  Text("Explore",style: GoogleFonts.inter(),),
                  selectedColor: Colors.black,
                ),
                SalomonBottomBarItem(
                  icon: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: SvgPicture.asset("assets/icons/book-heart.svg",
                        width: 24, height: 24),
                  ),
                  title:  Text("Bookmark",style: GoogleFonts.inter()),
                  selectedColor: Colors.black,
                ),
                SalomonBottomBarItem(
                  icon: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: SvgPicture.asset("assets/icons/user.svg",
                        width: 24, height: 24),
                  ),
                  title:  Text("Profile",style: GoogleFonts.inter(),),
                  selectedColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
