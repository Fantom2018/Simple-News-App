import 'package:json_annotation/json_annotation.dart';
import 'article.dart';

part 'news_response_model.g.dart';

@JsonSerializable()

class NewsRespModel{
  NewsRespModel();

  @JsonKey(name: "status")
  late String status;

  @JsonKey(name: "totalResults")
  late String totalResults;

  @JsonKey(name: "articles")
  late List<Article> articles;

  factory NewsRespModel.fromJson(Map<String, dynamic> json) => _$NewsRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsRespModelToJson(this);

}