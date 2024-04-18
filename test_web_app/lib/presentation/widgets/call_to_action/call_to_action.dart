import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String text;

  const CallToAction(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 31, 229, 146),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
