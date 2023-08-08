import 'package:crworkout_tracker/config/router/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      
      onDestinationSelected: (value) {
        final link = appMenuItems[value];

        context.push(link.path);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        ...appMenuItems
          .map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.name)
          ))
      ],
    );
  }
}