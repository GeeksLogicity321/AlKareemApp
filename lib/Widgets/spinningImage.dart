import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MySpinningImage extends StatefulWidget {
  @override
  _MySpinningImageState createState() => _MySpinningImageState();
}

class _MySpinningImageState extends State<MySpinningImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Image.asset(
        'Assets/Loading.png',
        height: 10.h,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
