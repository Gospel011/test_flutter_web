import 'package:flutter/material.dart';


class NavItem extends StatelessWidget {
  const NavItem(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 18));
  }
}