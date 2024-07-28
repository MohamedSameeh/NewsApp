import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/Categories_listview.dart';
import 'package:news_app/presentation/widgets/NewsListTileBuilder.dart';


class NewsHomepage extends StatelessWidget {
  const NewsHomepage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'News',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              TextSpan(
                  text: 'Cloud',
                  style: TextStyle(fontSize: 30, color: Colors.yellow))
            ])),
          ),
        ),
        body:  Padding(
          padding: EdgeInsets.all(8.0),
          child:
          CustomScrollView(
              center: key,
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child:CategoriesListview() ,),
                SliverToBoxAdapter(child:SizedBox(height: 20,)),
                  NewsListTileBuilder(category: 'general',),
              ],
            ),
          )
        );
  }
}


