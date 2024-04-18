import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/widgets/course_details.dart';
import 'package:test_web_app/presentation/widgets/call_to_action/call_to_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
            children: [
              CourseDetails(),
        
              Expanded(
                child: CallToAction("Join Course"),
              )
            ],
          );
  }
}