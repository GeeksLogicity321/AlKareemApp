import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class PageViewOfFacilities extends StatefulWidget {
  final List<String> images;

  PageViewOfFacilities({required this.images});
  @override
  _PageViewOfFacilitiesState createState() => _PageViewOfFacilitiesState();
}

class _PageViewOfFacilitiesState extends State<PageViewOfFacilities> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage.toInt(),
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.h, // Adjust the height as needed
          child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: widget.images
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.w),
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ))
                  .toList()),
        ),
        DotsIndicator(
          dotsCount: 3, // Number of pages
          position: _currentPage,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: kPrimaryColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            spacing: const EdgeInsets.all(3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
