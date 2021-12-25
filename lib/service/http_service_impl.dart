import 'package:dio/dio.dart';
import 'package:easy_news/service/http_service.dart';
//import 'package:easy_news/service/http_constants.dart';

const BASE_URL = "https://newsapi.org/";
 const API_KEY = "56784348fb5d41c8844a1be8cb9ec14d";


class HttpServiceImpl implements HttpService{
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async{
    // TODO: implement getRequest
    Response response;

    try{
      response =await _dio.get(url);
    }on DioError catch (e){
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }
  initializeInterceptor(){
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, ErrorInterceptorHandler){
        print(error.message);
      },
      onRequest: (request, RequestInterceptorHandler){
        print("${request.method} | ${request.path} ");
      },
      onResponse: (response, ResponseInterceptorHandler ){
        print("${response.statusCode} | ${response.statusMessage} | ${response.data}");
      }
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(

    baseUrl: BASE_URL,
    headers: {"Authorization" : "Baerer $API_KEY"}

    ));
    initializeInterceptor();
  }


}