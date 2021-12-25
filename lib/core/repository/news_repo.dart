import 'package:easy_news/core/model/article.dart';

abstract class NewsRepo {
  Future<List<Article>> getNewsHeadline();
  Future<List<Article>> getSearchNews(String query);
}