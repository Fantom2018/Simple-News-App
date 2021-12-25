import 'package:easy_news/feature/search_news/view/search_news_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feature/news_headline/view/news_headlineg_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: "/news_headline", page: () => NewsHeadlineView()), //binding: NewsHeadlineBinding()),
        GetPage(name: "/search_news", page: () => SearchNewsView()), //binding: SearchNewsBinding()),
      ],
      initialRoute: "/news_headline",
    );
  }
}
