import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widgets/LoremIpsumWidget.dart';
import 'Widgets/PageViewOfFacilities.dart';

class LibaryScreen extends StatelessWidget {
  const LibaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libary'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewOfFacilities(
                images: [
                  'Assets/1library.jpg',
                  'Assets/2library.jpg',
                  'Assets/3library.jpg',
                ],
              ),
              LoremIpsumWidget(
                name: 'Library',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
