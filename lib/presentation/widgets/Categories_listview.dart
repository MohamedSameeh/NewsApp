import 'package:flutter/material.dart';
import 'package:news_app/models/categoery_model.dart';
import 'package:news_app/presentation/widgets/categoery_card.dart';
class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});
final List<CategoeryModel> categories = const [
    CategoeryModel(
        imageUrl: 'assets/images/images.jpeg', title: 'Business'),
    CategoeryModel(
        imageUrl: 'assets/images/download.jpeg', title: 'Entertainment'),
    CategoeryModel(
        imageUrl: 'assets/images/2gHPhDWjds5q8nqLM2FG9Y-1200-80.jpg',
        title: 'General'),
    CategoeryModel(
        imageUrl: 'assets/images/download (1).jpeg', title: 'Health'),
    CategoeryModel(
        imageUrl: 'assets/images/download (2).jpeg', title: 'science'),
    CategoeryModel(
        imageUrl:
            'assets/images/sports-set-athletes-various-disciplines-600nw-1349779070.webp',
        title: 'Sports'),
    CategoeryModel(
        imageUrl: 'assets/images/download (3).jpeg', title: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return MaterialCard(category: categories[index],);
            
          },
        ),
      );
  }
}