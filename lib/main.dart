import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/news_homepage.dart';
import 'package:news_app/web_services/news_services.dart';
import 'package:dio/dio.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NewsHomepage(),
    );
  }
}
