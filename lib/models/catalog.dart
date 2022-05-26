class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 11 pro",
        desc: "Apple Phone 12th generation",
        color: "#33505a",
        price: 990,
        image: "https://picsum.photos/seed/picsum/200/300")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.image});
}
