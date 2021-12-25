import 'package:easy_news/core/repository/news_repo_impl.dart';
import 'package:easy_news/feature/news_headline/controller/news_headline_controller.dart';

import 'package:get/get.dart';


class NewsHeadlineBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NewsRepoImpl());
    Get.put(NewsHeadlineController());
  }

}