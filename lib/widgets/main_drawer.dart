import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "cooking up",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            icon: Icons.restaurant,
            title: "Meals",
          ),
          buildListTitle(
            icon: Icons.settings,
            title: "Filter",
          ),
        ],
      ),
    );
  }
}

class buildListTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  buildListTitle({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // some thing
      },
    );
  }
}
