import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/bottom_navigation_bar_controller.dart';

import '../../../../utils/widgets/articles_widgets/articles_controller.dart';

class Article3Page extends StatelessWidget {
  const Article3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArticlesController(
        image: "assets/images/home_page/image3.png",
        title: "The Pros and Cons of Remote Work",
        avatar: "assets/images/clapped_articles_page/avatar5.png",
        text1: "Faith Smitham · May 6, 2023",
        text2:
            "Remote work has become a prevalent mode of employment, especially with advancements in technology and the global shift prompted by the COVID-19 pandemic. While it offers numerous advantages, it also comes with its own set of challenges. Here’s a look at the pros and cons of remote work.One of the most significant advantages of remote work is flexibility. Employees can often set their own schedules, allowing for a better work-life balance. This flexibility can lead to increased job satisfaction and reduced stress, as workers can tailor their work hours around personal commitments and peak productivity times.Another advantage is the elimination of commuting. Without the daily drive or public transit ride, employees save time and money, reducing their overall stress levels. This can also have positive environmental impacts due to fewer cars on the road, leading to reduced carbon emissions.Remote work can also lead to increased productivity. In a home environment, employees can create a workspace that suits their needs, free from office distractions. Many workers report being able to concentrate better and accomplish more when working remotely.On the downside, remote work can lead to feelings of isolation. Without the daily interaction with colleagues, employees may miss the social aspects of a traditional office setting, which can affect mental health and a sense of belonging within the company.Communication can also be a challenge. While technology facilitates remote work, it cannot completely replicate face-to-face interactions. Miscommunications can occur more easily, and building a cohesive team can be harder without regular in-person meetings.Another potential drawback is the difficulty in separating work from personal life. Without the physical separation of an office, employees may find it challenging to switch off from work mode, leading to longer hours and potential burnout.Moreover, not all home environments are conducive to work. Some employees may lack a quiet, dedicated workspace or face interruptions from family members, which can hinder productivity.Lastly, remote work can lead to career stagnation for some. Without regular in-person interactions, remote workers might miss out on networking opportunities, mentorship, and visibility for promotions.In conclusion, remote work offers substantial benefits such as flexibility, cost savings, and increased productivity. However, it also presents challenges like isolation, communication barriers, and difficulties in maintaining work-life balance. Companies and employees must weigh these pros and cons to determine the most effective work arrangements.", bottomNavigationBar: const BottomNavigationBarController(),
      ),
        bottomNavigationBar: const BottomNavigationBarController()
    );
  }
}
