import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/bottom_navigation_bar_controller.dart';

import '../../../../utils/widgets/articles_widgets/articles_controller.dart';

class Article1Page extends StatelessWidget {
  const Article1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ArticlesController(
          image: "assets/images/home_page/image1.jpg",
          title: "Experience the Serenity of Japan's Traditional Countryside",
          avatar: "assets/images/clapped_articles_page/avatar2.png",
          text1: "Robin Wilkinson · Apr 20, 2023",
          text2:
              "Japan’s traditional countryside offers a serene escape from the fast-paced urban life, immersing visitors in a world where natural beauty, cultural heritage, and ancient traditions harmoniously coexist. Exploring this tranquil landscape provides an authentic glimpse into Japan’s rich history and lifestyle.The historic villages of Shirakawa-go and Gokayama, with their iconic gassho-zukuri farmhouses, offer a step back in time. These UNESCO World Heritage sites showcase unique architectural styles designed to withstand heavy snowfall. Similarly, Takayama, known as “Little Kyoto,” enchants visitors with its Edo-period streets, traditional sake breweries, and vibrant morning markets.Staying in a ryokan, a traditional Japanese inn, epitomizes Japanese hospitality (omotenashi). Ryokan feature tatami-mat rooms, futon bedding, communal baths (onsen), and kaiseki (multi-course meals). Kinosaki Onsen, famous for its hot springs, allows guests to experience this unique aspect of Japanese culture.Mount Koya (Koyasan), a sacred Buddhist site with over 100 temples, offers spiritual tranquility. Visitors can stay in temple lodgings (shukubo), participate in morning prayers, and enjoy monk cuisine (shojin ryori). The Nakasendo Trail, an ancient route between Kyoto and Tokyo, provides a scenic hike through historical post towns like Magome and Tsumago.In Uji, near Kyoto, participating in a traditional tea ceremony offers insight into Japan’s tea culture. Uji is renowned for its matcha, and visitors can also explore Byodo-in Temple and the Uji River. Rice planting and harvesting in local farms offer hands-on agricultural experiences.The Awa Odori in Tokushima and the Ouchi-juku Snow Festival in Fukushima celebrate local traditions with dance, food, and performances. Exploring crafts like Bizen Pottery in Okayama allows visitors to engage with Japan’s artistic heritage.Japan’s traditional countryside, with its historic villages, ryokan stays, sacred sites, cultural experiences, and festivals, provides a serene and enriching retreat. It’s a perfect destination for those seeking to connect with Japan’s timeless beauty and cultural richness.", bottomNavigationBar: const BottomNavigationBarController(),
        ),
        bottomNavigationBar: const BottomNavigationBarController());
  }
}
