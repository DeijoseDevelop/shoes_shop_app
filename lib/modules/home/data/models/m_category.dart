import 'dart:convert';

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({
    this.id,
    required this.name,
  });

  final int? id;
  final String name;

  Category copyWith({
    int? id,
    String? name,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  static List<Category> categoriesFromJson(String str) =>
      List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

  static String categoriesToJson(List<Category> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  @override
  List<Object?> get props => [id, name];
}
