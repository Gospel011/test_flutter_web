import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_web_app/presentation/pages/home_page/my_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
      const ScreenBreakpoints(desktop: 970, tablet: 550, watch: 200));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: "Open Sans")),
      title: "Waitlist",
      home: const MyHomePage(),
    );
  }
}
