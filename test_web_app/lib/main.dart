import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: "Open Sans")
      ),
      title: "Waitlist",
      home: const MyHomePage(),
    );
  }
}
