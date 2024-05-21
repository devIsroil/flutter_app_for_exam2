import 'package:flutter/material.dart';
import 'package:flutter_app_for_exam2/NewsApp/utils/widgets/articles_widgets/bottom_navigation_bar_controller.dart';

import '../../../../utils/widgets/articles_widgets/articles_controller.dart';

class Article2Page extends StatelessWidget {
  const Article2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ArticlesController(
          image: "assets/images/home_page/image2.jpg",
          title: "Discovering the Magic of Paris: A Journey through",
          avatar: "assets/images/clapped_articles_page/avatar1.png",
          text1: "Matthew Berge · Apr 17, 2023",
          text2:
              '''Discovering the magic of Paris is a journey through time, culture, and unparalleled beauty. The city's enchanting blend of historic grandeur and modern sophistication captivates every traveler, making Paris an unforgettable destination.Walking along the Seine River, the charm of Paris comes alive. The riverbanks, adorned with iconic landmarks such as the Eiffel Tower, Notre-Dame Cathedral, and the Louvre, offer a picturesque view that feels like stepping into a romantic film. The bridges, each with its own history and design, add to the city's allure, providing perfect spots for reflection and admiration.Exploring the narrow streets of the Marais district reveals Paris's rich historical tapestry. Here, medieval architecture coexists with trendy boutiques and cafes, creating a vibrant atmosphere where the old meets the new. The district's Jewish Quarter, with its synagogues and kosher eateries, adds a unique cultural layer to the Parisian experience.A visit to Montmartre, the bohemian heart of Paris, is essential for any traveler. The area, once home to artists like Picasso and Van Gogh, retains its artistic spirit. The Sacré-Cœur Basilica, perched atop the hill, offers a panoramic view of the city, while the bustling Place du Tertre showcases local artists and their works, providing a glimpse into the creative soul of Paris.Paris's culinary scene is another magical aspect of the city. From quaint patisseries offering delicate pastries to Michelin-starred restaurants serving exquisite cuisine, the city is a paradise for food lovers. Savoring a croissant at a sidewalk cafe or indulging in a gourmet meal with a view of the Eiffel Tower encapsulates the essence of Parisian dining.The city's museums and galleries, such as the Louvre and Musée d'Orsay, house some of the world's most famous artworks. Wandering through these cultural treasures, one can encounter masterpieces that have shaped art history, making Paris a haven for art enthusiasts.Ultimately, the magic of Paris lies in its ability to blend history, culture, and modernity seamlessly. Every corner of the city, from its grand boulevards to its hidden alleys, tells a story. Discovering Paris is more than just visiting a city; it's embarking on a journey through a living masterpiece that continues to inspire and enchant all who wander its streets.''', bottomNavigationBar: const BottomNavigationBarController(),
        ),
        bottomNavigationBar: const BottomNavigationBarController());
  }
}
