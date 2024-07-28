import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/Categories_listview.dart';
import 'package:news_app/presentation/widgets/NewsListTileBuilder.dart';
class CategoryPage extends StatelessWidget {
  CategoryPage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          center: key,
          physics: BouncingScrollPhysics(),
          slivers: [
            NewsListTileBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
