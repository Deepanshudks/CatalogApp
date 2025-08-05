import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetail extends StatelessWidget {
  final Item product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        backgroundColor: context.theme.canvasColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                product.imageUrl,
                isAntiAlias: true,
              ).box.rounded.p1.make().w24(context).p12(),
              product.name.text.xl4.bold.make(),
            ],
          ),
          p32(),
        ],
      ).centered(),
    );
  }
}
