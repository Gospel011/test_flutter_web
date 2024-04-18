import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToActionMobile extends StatelessWidget {
  final String text;

  const CallToActionMobile(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) => Center(
        child: Container(
        constraints: BoxConstraints(maxHeight: 500),
        child: Image.asset('assets/images/home_learn.png', fit: BoxFit.contain,),
      ),
      ),
    );
  }
}
