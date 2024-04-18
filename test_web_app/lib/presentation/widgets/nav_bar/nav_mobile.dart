import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'nav_item.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Logo
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)),

        // row with nav items --> Episodes, About
        const AppLogo()
      ]),
    );
  }
}
