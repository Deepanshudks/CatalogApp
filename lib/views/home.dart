import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App"), centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text('Hey, Welcome to the app', style: TextStyle(fontSize: 15)),
              // ListView.builder(
              //   itemCount: CatalogModel.all.length,
              //   itemBuilder: (context, index) => {},
              // ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
