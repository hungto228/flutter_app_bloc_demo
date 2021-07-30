import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/widgets/main_drawer.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class FilterScreen extends StatefulWidget {
  static const routerName = "/filters";
  final Function saveFilter;

  const FilterScreen({required this.saveFilter});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _gluttenFree = false;
  bool _vegetarial = false;
  bool _vegan = false;
  bool _latorseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: widget.saveFilter(),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTileSwitch(
                  value: _latorseFree,
                  onChanged: (newValues) {
                    setState(() {
                      _latorseFree = newValues;
                    });
                  },
                  leading: Icon(Icons.access_alarm),
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.blueAccent,
                  title: Text("title2"),
                  subtitle: Text("desc"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

// ListTileSwitch _buildListTileSwitch(
//   String title,
//   String description,
//   bool currentValue,
//   Function updateValues,
// ) {
//   return ListTileSwitch(
//     value: currentValue,
//     leading: Icon(Icons.access_alarm),
//     onChanged: (_) => {updateValues},
//     visualDensity: VisualDensity.comfortable,
//     switchType: SwitchType.cupertino,
//     switchActiveColor: Colors.indigo,
//     title: Text(title),
//     subtitle: Text(description),
//   );
// }
}
