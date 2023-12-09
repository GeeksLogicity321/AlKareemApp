import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class DetailsWeidget extends StatelessWidget {
   DetailsWeidget({
    super.key,
    required this.icon,
    required this.text,
  });

  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [Icon(icon,color: kPrimaryColor,),
      SizedBox(width: 2.w,),
      Text(text,style: TextStyle(fontSize: 13.sp, color: Colors.black),)],);
  }
}