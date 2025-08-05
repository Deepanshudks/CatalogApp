import 'package:flutter/material.dart';
import 'package:my_app/views/home.dart';
import 'package:my_app/views/login_page.dart';
import 'package:my_app/utils/routes.dart';
import 'package:my_app/widgets/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
// 