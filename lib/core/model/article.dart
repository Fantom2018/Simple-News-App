
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article{
  Article();

  @JsonKey(name:"author")
   late String author;

  @JsonKey(name:"title")
   late String title;

  @JsonKey(name:"urlToImage")
  late String imageUrl;

  @JsonKey(name:"content")
  late String content;

  @JsonKey(name:"publishedAt")
  late String publishedAt;

  DateTime? get getPublishedAtData => DateTime.tryParse(publishedAt);

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}