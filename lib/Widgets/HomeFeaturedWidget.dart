import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeFeaturedWidget extends StatelessWidget {
  HomeFeaturedWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
  });

  final String imagePath;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: ListTile(
        leading: Stack(
          children: [
            Image.asset(
              'Assets/IconBackground.png',
              width: 10.w,
            ),
            Positioned(
              top: 0.8.h,
              left: 2.w,
              child: Image.asset(
                imagePath,
                width: 6.w,
              ),
            ),
          ],
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
