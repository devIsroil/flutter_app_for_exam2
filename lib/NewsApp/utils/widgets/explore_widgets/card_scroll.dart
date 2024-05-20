import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScroll extends StatelessWidget {
  String text;
  Color colorCard;

    CardScroll({super.key,required this.text, required this.colorCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(56.r)),
      color: colorCard,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 6.h),
        child: Text(text,style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w600,),),
      ),
    );
  }
}
