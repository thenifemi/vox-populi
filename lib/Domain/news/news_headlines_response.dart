// To parse this JSON data, do
//
//     final newsHeadlinsResponse = newsHeadlinesResponseFromJson(jsonString);

import 'dart:convert';

import 'article.dart';

NewsHeadlinesResponse newsHeadlinesResponseFromJson(String str) =>
    NewsHeadlinesResponse.fromJson(json.decode(str));

String newsHeadlinesResponseToJson(NewsHeadlinesResponse data) =>
    json.encode(data.toJson());

class NewsHeadlinesResponse {
  NewsHeadlinesResponse({
    this.status,
    this.totalResults,
    this.articles,
  });

  final String? status;
  final int? totalResults;
  final List<Article?>? articles;

  factory NewsHeadlinesResponse.fromJson(Map<String, dynamic> json) =>
      NewsHeadlinesResponse(
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
