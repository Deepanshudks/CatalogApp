import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("My App"),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 400),
              Text('Hey, Welcome to the app', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Center(child: Text('Drawer', style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
