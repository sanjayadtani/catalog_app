import 'package:catelog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catlog App"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
        drawer: MyDrawer());
  }
}
