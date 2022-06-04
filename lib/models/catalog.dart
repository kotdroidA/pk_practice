import 'dart:convert';

class CatalogModel {
  static List<Item>? items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.price,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? color,
    num? price,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      color: color ?? this.color,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'color': color});
    result.addAll({'price': price});
    result.addAll({'image': image});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      color: map['color'] ?? '',
      price: map['price'] ?? 0,
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, color: $color, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.color == color &&
        other.price == price &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        color.hashCode ^
        price.hashCode ^
        image.hashCode;
  }
}
