import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/extension/sized_box_extension.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/clapped_and_read_articles_widgets/card_articles.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/clapped_and_read_articles_widgets/containers_articles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReadArticlesPage extends StatefulWidget {
  const ReadArticlesPage({super.key});

  @override
  State<ReadArticlesPage> createState() => _ReadArticlesPageState();
}

class _ReadArticlesPageState extends State<ReadArticlesPage> {
  String selectedCategory = "All";

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          59.height(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              20.width(),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop(CupertinoPageRoute(builder: (context)=>ReadArticlesPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(14.sp),
                  width: 44.w,
                  height: 44.h,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/clapped_articles_page/left_arrow.svg",
                    width: 16.w,
                    height: 16.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              16.width(),
              Container(
                width: 270.w,
                alignment: Alignment.center,
                child: Text(
                  "Read Articles",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          38.height(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 32.w, right: 32.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => selectCategory("All"),
                    child: CardArticles(
                      text1: "All ",
                      text2: "(132)",
                      colorCard: selectedCategory == "All"
                          ? Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => selectCategory("Travel"),
                    child: CardArticles(
                      text1: "Travel ",
                      text2: "(51)",
                      colorCard: selectedCategory == "Travel"
                          ? Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => selectCategory("Technology"),
                    child: CardArticles(
                      text1: "Technology ",
                      text2: "(16)",
                      colorCard: selectedCategory == "Technology"
                          ? Color(0xffE9EEFA)
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left: 32, right: 32, top: 26.h),
              children: [
                ContainersArticles(
                  text1:
                  "Experience the Serenity of Japan's Traditional Countryside",
                  text2: "Matthew Berge · Apr 17, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar1.png",
                  image: "assets/images/clapped_articles_page/image1.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "Experience vs. Education: What Matters More in Today's Job Market?",
                  text2: "Robin Wilkinson · Apr 20, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar2.png",
                  image: "assets/images/clapped_articles_page/image2.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "Harnessing the Power of Experience: How to Use Your Past to Improve Your Future",
                  text2: "Phillip Paucek · Apr 29, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar3.png",
                  image: "assets/images/clapped_articles_page/image3.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "The Role of Experience in Developing Emotional Intelligence",
                  text2: "Gilberto Jacobson · May 2, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar4.png",
                  image: "assets/images/clapped_articles_page/image4.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "From Failure to Success: How Experience Can Help You Overcome Setbacks",
                  text2: "Faith Smitham · May 6, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar5.png",
                  image: "assets/images/clapped_articles_page/image5.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "The Benefits of Multidisciplinary Experience in the Workplace",
                  text2: "Sophie Larkin · May 10, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar6.png",
                  image: "assets/images/clapped_articles_page/image6.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "Experience and Creativity: Exploring the Connection Between Life Experience and Innovation",
                  text2: "Glenn O'Conner · May 13, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar7.png",
                  image: "assets/images/clapped_articles_page/image7.png",
                ),
                26.height(),
                ContainersArticles(
                  text1:
                  "Navigating Change: How Past Experience Can Help You Adapt to New Situations",
                  text2: "Dr. Roger Osinski · May 15, 2023",
                  avatar: "assets/images/clapped_articles_page/avatar8.png",
                  image: "assets/images/clapped_articles_page/image8.png",
                ),
                26.height(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
