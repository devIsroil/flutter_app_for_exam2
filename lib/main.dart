
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/screens/welcome_screens/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  return runApp(DevicePreview(enabled: kReleaseMode,builder: (context)=>NewsApp(),));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WelcomePage1(),
          //home: HomePage(),
        );
      },
    );
  }
}
