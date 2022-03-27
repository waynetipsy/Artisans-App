import 'package:bottom_navs/Screens%20nav/about.dart';
import 'package:bottom_navs/Screens%20nav/settings.dart';
import 'package:bottom_navs/Screens%20nav/support.dart';
import 'package:bottom_navs/Screens%20nav/userpolicy.dart';
import 'package:flutter/material.dart';
import './Screens nav/menu_items.dart';
import './Screens nav/menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
        PopupMenuButton<MenuItem>(
          onSelected: (item) => onSelected(context, item),
          itemBuilder: (context) => [
        ...MenuItems.itemsFirst.map(buildItem).toList(),
         const PopupMenuDivider(),
        ...MenuItems.itemsSecond.map(buildItem).toList(),
           ],
          ),
        ],
       ),
       body: Container(),
    );
  }
  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
     value: item,
    child: Row(
      children: [
        Icon(item.icon, color: Colors.black, size: 20),
        const SizedBox(width: 12),
        Text(item.text),
      ],
    ),
  );
  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemSettings :
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
        ),
      );
      break;
       case MenuItems.itemSupport :
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SupportScreen(),
        ),
      );
      break;
       case MenuItems.itemUserPolicy :
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const UserPolicyScreen(),
        ),
      );
      break;
      case MenuItems.itemAbout :
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AboutScreen()
        ),
        
      );
    }
  }
}