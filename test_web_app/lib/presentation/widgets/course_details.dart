import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      double fontSize = info.isMobile ? 16 : 21;
      double titleFontSize = info.isMobile ? 50 : 80;
      return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TITLE
              Text("FLUTTER WEB\nTHE BASICS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: titleFontSize, height: 0.9)),

              const SizedBox(
                height: 30,
              ),

              // COURSE DESCRIPTION
              Text(
                  'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                  style: TextStyle(fontSize: fontSize, height: 1.7))
            ],
          ));
    });
  }
}
