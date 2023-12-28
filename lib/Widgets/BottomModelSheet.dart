import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Utills/PaymentApi.dart';

class BottomModelSheetWidget extends StatelessWidget {
  BottomModelSheetWidget({
    super.key,
    this.amount,
    required this.planId,
    this.plotNumber,
  });
  final String? plotNumber;
  final int? amount;
  final String planId;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            width: 60.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.w),
              topRight: Radius.circular(4.w),
            )),
            child: Image.asset(
              'Assets/Easypaisa.png',
            ),
          ),
          plotNumber != null
              ? Text(
                  'Plot No. # $plotNumber',
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                )
              : Text(
                  '',
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                ),
          plotNumber != null
              ? Text(
                  'Amount:',
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                )
              : Text(
                  'Total Amount:',
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                ),
          Text(
            '$amount',
            style: TextStyle(
                color: Colors.green,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    payNow(planId, context);
                  },
                  child: Text('Paynow'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
