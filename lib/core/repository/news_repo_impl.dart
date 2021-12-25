import 'dart:convert';

import 'package:easy_news/core/model/article.dart';
import 'package:easy_news/core/model/news_response_model.dart';
import 'package:easy_news/service/http_service.dart';
import 'package:easy_news/service/http_service_impl.dart';
import 'package:get/get.dart';
import 'news_repo.dart';

class NewsRepoImpl implements NewsRepo {
   late HttpService _httpService;

  NewsRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadline() async{
    // TODO: implement getNewsHeadline
    try{
      final response = await _httpService.getRequest("/v2/top-headlines?country=us");
      final parsedResponse = NewsRespModel.fromJson(response.data);
      return parsedResponse.articles;
    }on Exception catch(e){
      print(e);
      return [];
    }

  }

  @override
  Future<List<Article>> getSearchNews(String query) async{
    // TODO: implement getSearchNews
    try {
      final response = await _httpService.getRequest("/v2/everything?q=$query");

      final parsedResponse = NewsRespModel.fromJson(response.data);

      return parsedResponse.articles;
    } on Exception catch (e) {
      print(e);
      return null!;
    }
  }

}