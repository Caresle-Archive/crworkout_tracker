import 'package:crworkout_tracker/config/router/menu_item.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(

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