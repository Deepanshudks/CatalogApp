// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String imageUrl;
  final String color;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
    required this.color,
  });

  Item copyWith({
    num? id,
    String? name,
    String? desc,
    num? price,
    String? imageUrl,
    String? color,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'imageUrl': imageUrl,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as num,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      imageUrl: map['imageUrl'] as String,
      color: map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, imageUrl: $imageUrl, color: $color)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        color.hashCode;
  }
}
