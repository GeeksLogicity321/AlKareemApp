import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Utills/PaymentApi.dart';

class PenaltyBottomModelSheetWidget extends StatelessWidget {
  PenaltyBottomModelSheetWidget({
    super.key,
    required this.amount,required this.penaltyId
    
  });
  final int? amount;
  final String penaltyId;

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

          Text(
            'Rs. $amount',
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
                    payPenaltyNow(penaltyId, context);
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
