import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/welcome_screens/welcome_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage1 extends StatefulWidget {
  const WelcomePage1({super.key});

  @override
  State<WelcomePage1> createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1800),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9EEFA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 169.w,
                height: 109.h,
                child: SvgPicture.asset("assets/icons/logo.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
