import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/categoery_model.dart';
import 'package:news_app/presentation/screens/category_page.dart';

class MaterialCard extends StatelessWidget {
  const MaterialCard({super.key, required this.category});
  final CategoeryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryPage(category: category.title,);
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 160,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(category.imageUrl), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          category.title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }
}
