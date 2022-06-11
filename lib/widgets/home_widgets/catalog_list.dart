import 'package:flutter/material.dart';
import 'package:pk_practice/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items?.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          child: CatalogItem(catalog: catalog),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailsPage(catalog: catalog),
            ),
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item? catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog!.id.toString()),
            child: CatalogImage(
              image: catalog?.image ?? "",
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog!.name.text.bold.lg.color(context.accentColor).make(),
                catalog!.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog!.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        ),
                      ),
                      child: "Buy".text.make(),
                    )
                  ],
                ).pOnly(right: 8),
              ],
            ),
          )
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
