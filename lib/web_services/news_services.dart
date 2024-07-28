import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices{
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=aab761deef8b4cd9a0386ed4942d2088&q=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          imageUrl: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
          content: article['content']);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
