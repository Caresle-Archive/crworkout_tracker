import 'package:crworkout_tracker/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem {
  final String name;
  final String path;
  final IconData icon;
  final Widget widgetPage;

  const MenuItem({
    required this.name,
    required this.path,
    required this.icon,
    required this.widgetPage,
  });

  GoRoute getGoRoute() => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => widgetPage,
  );
}

const appMenuItems = <MenuItem>[
  MenuItem(
    name: 'home',
    path: '/',
    icon: Icons.home,
    widgetPage: HomeScreen()
  ),
  MenuItem(
    name: 'settings',
    path: '/settings',
    icon: Icons.settings,
    widgetPage: SettingsScreen()
  ),
];