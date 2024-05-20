import 'package:flutter/cupertino.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAreas extends StatelessWidget {
  String text1;
  String text2;
  String avatar;
  String image;

  AboutAreas({super.key,required this.text1,required this.text2,required this.avatar,required this.image});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 366.w,
        //height: 80.h,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                2.height(),
                Row(
                  children: [
                    Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                      Image.asset(avatar),
                    ),
                    8.width(),
                    Text(
                      text2,
                      style: GoogleFonts.inter(
                        color: Color(0xff6D6265),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              width: 112.w,
              height: 80.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          image),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
    );
  }
}
