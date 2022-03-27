import 'package:flutter/material.dart';

import './menu_item.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [
     itemSettings,
     itemSupport,
  ];

  static const List<MenuItem> itemsSecond = [
    itemUserPolicy,
    itemAbout,
  ];

  static const itemSettings = MenuItem(
    text: 'Settings',
    icon: Icons.settings
  );

  static const itemSupport = MenuItem(
    text: 'Support',
    icon: Icons.support
  );

   static const itemUserPolicy = MenuItem(
    text: 'User Policy',
    icon: Icons.policy,
  );

   static const itemAbout = MenuItem(
    text: 'About',
    icon: Icons.info,
  );
}