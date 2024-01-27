import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widgets/LoremIpsumWidget.dart';
import 'Widgets/PageViewOfFacilities.dart';

class CinemaScreen extends StatelessWidget {
  const CinemaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cinema'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewOfFacilities(
                images: [
                  'Assets/1cinema.jpg',
                  'Assets/2cinema.jpg',
                  'Assets/3cinema.jpg',
                ],
              ),
              LoremIpsumWidget(name: 'Cinema',),
            ],
          ),
        ),
      ),
    );
  }
}
