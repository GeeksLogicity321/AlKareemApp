import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Models/GalleryModel.dart';

class GalleryStoryWidget extends StatelessWidget {
  GalleryStoryWidget({
    super.key,
    required this.currentIndexGallery,
  });

  final GalleryModel currentIndexGallery;
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: Text(
            currentIndexGallery.title!,
            style: TextStyle(fontSize: 15.sp, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 60.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: currentIndexGallery.pics!.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.w),
                  child: Image.network(
                    currentIndexGallery.pics![index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Center(
            child: SmoothPageIndicator(
                effect: WormEffect(dotHeight: 2.w, dotWidth: 2.w),
                controller: _controller,
                count: currentIndexGallery.pics!.length),
          ),
        )
      ],
    );
  }
}
