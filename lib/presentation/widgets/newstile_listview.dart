import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/presentation/widgets/news_tile.dart';

class NewstileListview extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewstileListview({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding:const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
