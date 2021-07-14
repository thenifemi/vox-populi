// To parse this JSON data, do
//
//     final searchNewsResponse = searchNewsResponseFromJson(jsonString);

import 'dart:convert';

import 'article.dart';

SearchNewsResponse searchNewsResponseFromJson(String str) =>
    SearchNewsResponse.fromJson(json.decode(str));

String searchNewsResponseToJson(SearchNewsResponse data) =>
    json.encode(data.toJson());

class SearchNewsResponse {
  SearchNewsResponse({
    this.status,
    this.totalResults,
    this.articles,
  });

  final String? status;
  final int? totalResults;
  final List<Article?>? articles;

  factory SearchNewsResponse.fromJson(Map<String, dynamic> json) =>
      SearchNewsResponse(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map(
          (x) => Article.fromJson(x),
        )),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map(
          (x) => x?.toJson(),
        )),
      };
}
