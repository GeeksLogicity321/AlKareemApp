import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class WaterBillScreen extends StatelessWidget {
  const WaterBillScreen({super.key});
  static const routeName = "WaterBillScreen";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Water Bill Payment'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'Assets/CraditCard.png',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 8.h,
              ),
              TextField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                    enabledBorder: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    fillColor: kScaffoldBackgroundColor,
                    hintText: 'Type your reference No',
                    hintStyle: TextStyle(fontSize: 12.sp)),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }
}
