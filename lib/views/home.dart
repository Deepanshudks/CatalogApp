import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/home_widgets/catelog_header.dart';
import 'package:my_app/widgets/home_widgets/catelog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final loadedData = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(loadedData);
    CatalogModel.items = List.from(
      decodedData,
    ).map<Item>((element) => Item.fromMap(element)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeader(),
              10.heightBox,
              (CatalogModel.items.isNotEmpty)
                  ? CatalogList().expand()
                  : CircularProgressIndicator().centered(),
            ],
          ),
        ),
      ),
    );
  }
}
