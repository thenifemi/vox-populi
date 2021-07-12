// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class User {
  User({
    required this.name,
    this.avatar,
  });

  @HiveField(0)
  String? name;
  @HiveField(1)
  String? avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "avatar": avatar,
      };
}
