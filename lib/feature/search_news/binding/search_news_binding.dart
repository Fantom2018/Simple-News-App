import 'package:easy_news/feature/search_news/controller/search_news_controller.dart';
import 'package:get/get.dart';


class SearchNewsBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SearchNewsController());
  }

}