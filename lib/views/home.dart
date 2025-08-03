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
              SizedBox(height: 24),
              Text(
                "Hello, Welcome to OnePiece",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 14),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () => {Navigator.pushNamed(context, "/login")},
                child: Text('Click to login'),
              ),
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
