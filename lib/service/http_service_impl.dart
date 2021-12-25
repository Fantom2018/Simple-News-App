import 'package:dio/dio.dart';
import 'package:easy_news/service/http_service.dart';
import 'package:easy_news/service/http_constants.dart';

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
      onError: (error, interceptorHandler){
        print(error.message);
      },
      onRequest: (request, interceptorHandler){
        print("${request.method} | ${request.path} ");
      },
      onResponse: (response, interceptorHandler){
        print("${response.statusCode} ${response.statusMessage} ${response.data}");
      }
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
    baseUrl: HttpConst.BASE_URL,
    headers: {"Authorization" : "Baerer ${HttpConst.API_KEI}"}

    ));
    initializeInterceptor();
  }


}