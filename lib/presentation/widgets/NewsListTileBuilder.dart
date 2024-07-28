import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/presentation/widgets/newstile_listview.dart';
import 'package:news_app/web_services/news_services.dart';
import 'package:dio/dio.dart';

class NewsListTileBuilder extends StatefulWidget {
  final String category;
  const NewsListTileBuilder({
    required this.category,
    super.key,
  });

  @override
  State<NewsListTileBuilder> createState() =>
      _NewsListTileBuilderState(category: category);
}

class _NewsListTileBuilderState extends State<NewsListTileBuilder> {
  var future;
  final String category;

  _NewsListTileBuilderState({required this.category});
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(category: category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewstileListview(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text('OOps, your app isnt connected to internet'));
          } else {
            return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
