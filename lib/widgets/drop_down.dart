import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown() : super();

  final String title = "DropDown";

  @override
  DropDownState createState() => DropDownState();
}

class Menu {
  int id;
  String name;

  Menu(this.id, this.name);

  static List<Menu> getItems() {
    return <Menu>[
      Menu(1, ''),
      Menu(2, ''),
      Menu(3, ''),
      Menu(4, ''),
      Menu(5, ''),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Menu> _items = Menu.getItems();
  List<DropdownMenuItem<Menu>> _dropdownMenuItems;
  Menu _selectedMenu;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_items);
    _selectedMenu = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Menu>> buildDropdownMenuItems(List items) {
    List<DropdownMenuItem<Menu>> items = List();
    for (Menu item in _items) {
      items.add(
        DropdownMenuItem(
          value: item,
          child: Text(item.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Menu selectedMenu) {
    setState(() {
      _selectedMenu = selectedMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("More", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            DropdownButton(
              dropdownColor: Colors.white,
              iconDisabledColor: Colors.white,
              iconEnabledColor: Colors.white,
              focusColor: Colors.white,
              value: _selectedMenu,
              items: _dropdownMenuItems,
              onChanged: onChangeDropdownItem,
            ),
          ],
        ),
      ),
    );
  }
}
