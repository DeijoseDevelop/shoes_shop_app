import 'dart:convert';

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String size;
  final String color;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? size,
    String? color,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        price: price ?? this.price,
        size: size ?? this.size,
        color: color ?? this.color,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        size: json["size"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "size": size,
        "color": color,
      };

  static List<Product> productsFromJson(String str) =>
      List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));
  static String productsToJson(List<Product> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}