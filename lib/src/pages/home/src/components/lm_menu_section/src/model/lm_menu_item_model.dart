import 'package:flutter/material.dart';

class LMMenuItemModel {
  final String label;
  final IconData icon;
  final bool isCollapsed;

  LMMenuItemModel(this.label, this.icon, this.isCollapsed);

  static List<LMMenuItemModel> items = [
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
    LMMenuItemModel("", Icons.home, false),
  ];
}
