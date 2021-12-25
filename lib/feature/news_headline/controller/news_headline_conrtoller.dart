import 'package:easy_news/core/model/article.dart';
import 'package:easy_news/core/repository/news_repo.dart';
import 'package:easy_news/core/repository/news_repo_impl.dart';
import 'package:get/get.dart';

class NewsNeadlineController extends GetxController{
  late NewsRepo _newsRepo;

  NewsHeadlineController(){
    _newsRepo = Get.find<NewsRepoImpl>();
    loadNewsLine();
  }

  RxBool isLoading = false.obs;

  late RxList<Article> articles;

  loadNewsLine() async{

    showLoading();

    final result = await _newsRepo.getNewsHeadline();

    hideLoading();

    if(result!= null){
      articles = result.obs;
    }else{
      print("No data recieved");
    }
  }

  showLoading(){
    isLoading.toggle();
  }

  hideLoading(){
    isLoading.toggle();
  }


}