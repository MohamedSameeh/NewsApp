import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                articleModel.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                articleModel.title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                articleModel.content!,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
