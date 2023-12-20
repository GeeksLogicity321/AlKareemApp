import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({super.key});
  static const routeName = "ComplaintsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaints'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: TextField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                    enabledBorder: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    fillColor: kScaffoldBackgroundColor,
                    hintText: 'Full Name',
                    hintStyle: TextStyle(fontSize: 12.sp)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: TextField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                    enabledBorder: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    fillColor: kScaffoldBackgroundColor,
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(fontSize: 12.sp)),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    child: TextField(
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                          enabledBorder: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.h),
                          fillColor: kScaffoldBackgroundColor,
                          hintText: 'House',
                          hintStyle: TextStyle(fontSize: 12.sp)),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    child: TextField(
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                          enabledBorder: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.h),
                          fillColor: kScaffoldBackgroundColor,
                          hintText: 'Street',
                          hintStyle: TextStyle(fontSize: 12.sp)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    child: TextField(
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                          enabledBorder: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.h),
                          fillColor: kScaffoldBackgroundColor,
                          hintText: 'Sector',
                          hintStyle: TextStyle(fontSize: 12.sp)),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    child: TextField(
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                          enabledBorder: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.h),
                          fillColor: kScaffoldBackgroundColor,
                          hintText: 'phase',
                          hintStyle: TextStyle(fontSize: 12.sp)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: TextField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                    enabledBorder: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    fillColor: kScaffoldBackgroundColor,
                    hintText: 'Branch',
                    hintStyle: TextStyle(fontSize: 12.sp)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: SizedBox(
                height: 20.h,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                      enabledBorder: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      fillColor: kScaffoldBackgroundColor,
                      hintText: 'complaint Description',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    color: kPrimaryColor,
                    size: 10.w,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: SizedBox(
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Submit'))),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
