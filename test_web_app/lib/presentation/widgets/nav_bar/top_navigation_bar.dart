import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_web_app/presentation/widgets/nav_bar/nav_tablet_desktop.dart';

import 'nav_mobile.dart';


class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const NavBarTabletDesktop(),
      tablet: (context) => const NavBarTabletDesktop(),
      mobile: (context) => const NavBarMobile(),
    );
  }
}
