import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/feedback/feedback_section.dart';
import 'package:web_app/sections/recent_work/recent_work_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final _breakpoint = Breakpoint.fromConstraints(constraints);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            //SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            //SizedBox(height: kDefaultPadding * 2),
            ServiceSection(),
            //SizedBox(height: kDefaultPadding * 2),
            //RecentWorkSection(),
            FeedbackSection(),
            //SizedBox(height: kDefaultPadding * 2),
            ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  });
  }
}
