import 'package:flutter/material.dart';

/// In this class we have to ensure that either icon or assetPath is given, not both.
class AppModel {
  String title;
  String? assetPath;
  IconData? icon;
  double? iconSize; // Added icon size for flexibility

  Color color;
  Widget? screen;
  String? link;

  AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    this.icon,
    this.link,
    this.screen,
    this.iconSize, // Optional size parameter
  }) : assert(icon == null || assetPath == null);
}
