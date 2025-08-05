import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/views/product_detail.dart';
import 'package:my_app/widgets/home_widgets/catelog_image.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final item = CatalogModel.items[index];
          return InkWell(
            focusColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetail(product: item),
                ),
              );
            },
            child: CatalogItem(item: item),
          );
        },
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item item;

  const CatalogItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(imageUrl: item.imageUrl),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item.name.text.lg.bold.color(MyTheme.darkBlueColor).make(),
                item.desc.text.textStyle(context.captionStyle).make(),
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${item.price}".toString().text.bold.xl.make().py(4),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          MyTheme.darkBlueColor,
                        ),
                      ),
                      onPressed: () {},
                      child: "Buy".text.white.bold.make(),
                    ).px(18),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(140).make().py(6);
  }
}
