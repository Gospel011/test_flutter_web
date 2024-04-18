import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      double fontSize = info.isMobile ? 16 : 21;
      double titleFontSize = info.isMobile ? 50 : 80;
      final style = TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: titleFontSize, height: 0.9);
      return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TITLE
              RichText(text: TextSpan(
                style: style,
                text: "FEATURED PRODUCT\n", children: [

              TextSpan(text: "L-EARN",
                  style: style.copyWith(color: Colors.blue[200])),
              ])),

              const SizedBox(
                height: 30,
              ),

              // COURSE DESCRIPTION
              Text(
                  'Discover a revolutionary platform where students become teachers, sharing insights, resources, and expertise in an interactive community. L-Earn offers a dynamic space to create, explore, and monetize courses tailored to your passions and expertise',
                  style: TextStyle(fontSize: fontSize, height: 1.7))
            ],
          ));
    });
  }
}
