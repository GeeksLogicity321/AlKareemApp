import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeFeaturedWidget extends StatelessWidget {
  HomeFeaturedWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
  });

  String imagePath;
  String title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 25.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'Assets/IconBackground.png',
                  width: 15.w,
                ),
                Positioned(
                  top: 1.5.h,
                  left: 3.w,
                  child: Image.asset(
                    imagePath,
                    height: 4.h,
                  ),
                ),
              ],
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 12.sp),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
