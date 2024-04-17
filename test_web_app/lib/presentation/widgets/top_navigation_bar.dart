import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Logo
        Image.asset('assets/logo.png', width: 150, height: 80),
      
        // row with nav items --> Episodes, About
        const Row(children: [
          _NavItem("Episodes"),
          SizedBox(width: 60),
          _NavItem("About")
        ])
      ]),
    );
  }
}



class _NavItem extends StatelessWidget {
  const _NavItem(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 18));
  }
}