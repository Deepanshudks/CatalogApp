import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 44),
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/facebook.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 14),
              Text(
                "Welcome, $name",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 14),
              Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    spacing: 20.0,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hint: Text("Enter your username"),
                          label: Text("Username"),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hint: Text("Enter your password"),
                          label: Text("Password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 18),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    width: changeButton ? 50 : 200,
                    height: 45,
                    child: changeButton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
