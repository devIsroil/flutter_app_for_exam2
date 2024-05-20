import 'package:flutter/cupertino.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookmarkNews extends StatelessWidget {
  String text1;
  String text2;
  String image;

  BookmarkNews({super.key,required this.text1,required this.text2,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              4.height(),
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
    );
  }
}
