import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallToAction extends StatelessWidget {
  final String text;

  const CallToAction(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxHeight: 500),
        child: Image.asset('assets/images/home_learn.png', fit: BoxFit.contain,),
      ),
    );
  }
}
