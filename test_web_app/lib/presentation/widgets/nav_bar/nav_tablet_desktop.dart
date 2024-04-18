import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'nav_item.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Logo
        AppLogo(),
      
        // row with nav items --> Episodes, About
        Row(children: [
          // NavItem("Products"),
          // SizedBox(width: 60),
          NavItem("About")
        ])
      ]),
    );
  }
}