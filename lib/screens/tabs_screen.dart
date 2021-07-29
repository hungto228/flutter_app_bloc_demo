import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/screens/category_Screens.dart';
import 'package:flutter_app_bloc_demo/screens/favorite_screen.dart';
import 'package:flutter_app_bloc_demo/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Widget>> _pages = [
    {
      "page": CategoriesScreen(),
      "title": Text("Categories"),
    },
    {
      "page": FavoriteScreen(),
      "title": Text("Favorites"),
    },
  ];
  int _selectted_papgeindex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectted_papgeindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _pages[_selectted_papgeindex]["title"],
      ),
      drawer: MainDrawer(),
      body: _pages[_selectted_papgeindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectted_papgeindex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text("Category"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text("Favorites"),
          ),
        ],
      ),
    );
  }
}
