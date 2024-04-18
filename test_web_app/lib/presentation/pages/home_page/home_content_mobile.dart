import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:test_web_app/presentation/widgets/course_details.dart';


class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CourseDetails(),

        SizedBox(height: 100,),

        CallToActionMobile("Join Course")
      ],
    );
  }
}
