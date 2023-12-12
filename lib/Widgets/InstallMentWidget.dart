import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class InstallmentWidget extends StatelessWidget {
  InstallmentWidget({super.key, required this.title, required this.amount});

  String title;
  List<String> amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: kPrimaryColor,
      ))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: SizedBox(
                width: 30.w,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 10.sp, color: Colors.black),
                ),
              ),
            ),
            VerticalDivider(
              color: kPrimaryColor,
            ),
            Flexible(
              child: SizedBox(
                width: 30.w,
                child: Column(
                  children: amount
                      .map((item) => Text(
                            item,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
