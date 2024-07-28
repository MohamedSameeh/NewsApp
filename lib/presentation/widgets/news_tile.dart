import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/presentation/screens/new_page.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NewPage(articleModel: ArticleModel(imageUrl: articleModel.imageUrl,title: articleModel.title,subtitle: articleModel.subtitle,content: articleModel.content,));
        }));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              articleModel.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            articleModel.subtitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style:const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
