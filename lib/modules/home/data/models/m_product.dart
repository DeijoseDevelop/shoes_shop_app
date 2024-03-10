import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

// ignore: must_be_immutable
class Product extends Equatable {
  final int id;
  final String name;
  final String description;
  final double price;
  final String size;
  final String color;
  final Category category;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
    required this.category,
    this.isFavorite = false,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? size,
    String? color,
    Category? category,
    bool? isFavorite,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        price: price ?? this.price,
        size: size ?? this.size,
        color: color ?? this.color,
        category: category ?? this.category,
        isFavorite: isFavorite ?? this.isFavorite,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        size: json["size"],
        color: json["color"],
        category: Category.fromJson(json["category"]),
        isFavorite: json["is_favorite"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "size": size,
        "color": color,
        "category": category.toJson(),
        "isFavorite": isFavorite,
      };

  void setIsFavorite(bool isFavorite) {
    this.isFavorite = isFavorite;
  }

  static List<Product> productsFromJson(String str) =>
      List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));
  static String productsToJson(List<Product> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        size,
        color,
        category,
        isFavorite,
      ];
}
