import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widgets/LoremIpsumWidget.dart';
import 'Widgets/PageViewOfFacilities.dart';

class ExecutiveScreen extends StatelessWidget {
  const ExecutiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Executive'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewOfFacilities(
                images: [
                  'Assets/1house.jpg',
                  'Assets/2house.jpg',
                  'Assets/3house.jpg',
                ],
              ),
              LoremIpsumWidget(
                name: 'Executive',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
