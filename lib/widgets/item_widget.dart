import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pk_practice/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Card(
        child: ListTile(
          onTap: () {
            if (kDebugMode) {
              print("${item!.name}prassed");
            }
          },
          leading: Image.network(item!.image),
          title: Text(item!.name),
          subtitle: Text(item!.desc),
          trailing: Text(
            "\$${item!.price}",
            textScaleFactor: 1.5,
            style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
