import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routerName = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      drawer: MainDrawer(),
      body: Center(
          child: Container(
        child: FlatButton(
          onPressed: () {},
          child: Text("click"),
        ),
      )),
    );
  }
}
