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
          alignment: info.isMobile ? Alignment.center : null,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 229, 146),
              borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          // width: info.screenSize.width < 550 ? MediaQuery.of(context).size.width : null,
          child: Text(
            text,
            style: TextStyle(
                fontSize: info.screenSize.width < 550 ? 16 : 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
