import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveBuilder(builder: (context, info) {
        final EdgeInsets padding = info.isMobile
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 24)
            : const EdgeInsets.symmetric(horizontal: 70, vertical: 60);
        return Container(
            padding: padding,
            alignment: Alignment.topCenter,
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Center(child: child));
      }),
    );
  }
}
