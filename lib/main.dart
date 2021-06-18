import 'package:catelog_app/pages/home.dart';
import 'package:catelog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.home,
      routes: {
        "/": (context) => HomePage(),
        MyRoute.home: (context) => HomePage(),
        MyRoute.login: (context) => LoginPage(),
      },
    );
  }
}
