import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetail extends StatelessWidget {
  final Item product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Product Detail".text.make()),
      body: Column(
        children: [
          SizedBox(height: 24),
          product.name.text.bold.make(),
          Image.network(product.imageUrl).box.rounded.p8.make().w(400).h(200),
          "\$${product.price.toString()}".text.bold.xl.make().py8(),
          product.name.text.xl2.bold.make(),
          product.desc.text.make().p16(),
          ElevatedButton(onPressed: () {}, child: "Buy Now".text.lg.make()),
        ],
      ),
    );
  }
}
