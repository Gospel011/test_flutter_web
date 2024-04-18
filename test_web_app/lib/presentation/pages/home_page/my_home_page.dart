import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/widgets/centered_view.dart';
import 'package:test_web_app/presentation/widgets/my_drawer.dart';

import 'package:test_web_app/presentation/widgets/nav_bar/top_navigation_bar.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return Scaffold(
        drawer: info.screenSize.width < 550
            ? const MyDrawer()
            : null,
        body: SingleChildScrollView(
          child: CenteredView(
            child: Column(children: [
              // top nav bar
              const TopNavigationBar(),

              const SizedBox(
                height: 40,
              ),

              // Text(MediaQuery.of(context).size.width.toString()),

              // body
              ScreenTypeLayout.builder(
                  desktop: (context) => const HomeContentDesktop(),
                  mobile: (context) => const HomeContentMobile())
            ]),
          ),
        ),
      );
    });
  }
}
