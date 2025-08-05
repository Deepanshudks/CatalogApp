import 'package:flutter/material.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(MyTheme.darkBlueColor).bold.make(),
        "Tending products".text.xl2.make(),
      ],
    );
  }
}
