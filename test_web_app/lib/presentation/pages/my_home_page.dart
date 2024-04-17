import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/widgets/centered_view.dart';

import 'package:test_web_app/presentation/widgets/top_navigation_bar.dart';

import 'package:test_web_app/presentation/widgets/course_details.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: [
          // top nav bar
          const TopNavigationBar(),

          // body
          Expanded(
            child: Row(
            children: [
              const CourseDetails(),

              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 31, 229, 146), borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    child: const Text("Join Course", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],
          ))
        ]),
      ),
    );
  }
}

