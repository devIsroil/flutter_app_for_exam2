import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardArticles extends StatelessWidget {
  String text1;
  String text2;
  Color colorCard;

  CardArticles(
      {super.key,
      required this.text1,
      required this.text2,
      required this.colorCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(56.r)),
      color: colorCard,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
        child: Row(
          children: [
            Text(
              text1,
              style: GoogleFonts.inter(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize:14.sp
              ),
            ),
            Text(text2,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xff6D6265)),)
          ],
        ),
      ),
    );
  }
}
