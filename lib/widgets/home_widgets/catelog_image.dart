import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String imageUrl;

  const CatalogImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      isAntiAlias: true,
    ).box.rounded.p1.make().w24(context).p12();
  }
}
