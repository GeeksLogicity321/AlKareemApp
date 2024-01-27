import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widgets/LoremIpsumWidget.dart';
import 'Widgets/PageViewOfFacilities.dart';

class GraveyardScreen extends StatelessWidget {
  const GraveyardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graveyard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewOfFacilities(
                images: [
                  'Assets/1graveyard.jpg',
                  'Assets/2graveyard.jpg',
                  'Assets/3graveyard.jpg',
                ],
              ),
              LoremIpsumWidget(
                name: 'Graveyard',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
