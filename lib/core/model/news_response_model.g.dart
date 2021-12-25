// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsRespModel _$NewsRespModelFromJson(Map<String, dynamic> json) =>
    NewsRespModel()
      ..status = json['status'] as String
      ..totalResults = json['totalResults'] as String
      ..articles = (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$NewsRespModelToJson(NewsRespModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
