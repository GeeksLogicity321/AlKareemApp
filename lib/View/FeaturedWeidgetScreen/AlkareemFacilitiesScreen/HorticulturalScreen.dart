import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widgets/LoremIpsumWidget.dart';
import 'Widgets/PageViewOfFacilities.dart';

class HorticulturalScreen extends StatelessWidget {
  const HorticulturalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horticultural'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewOfFacilities(
                images: [
                  'Assets/1horticultural.jpg',
                  'Assets/2horticultural.jpg',
                  'Assets/3horticultural.jpg',
                ],
              ),
              LoremIpsumWidget(
                name: 'Hotricultural',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
