import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Utills/PaymentApi.dart';

class PenaltyBottomModelSheetWidget extends StatefulWidget {
  PenaltyBottomModelSheetWidget(
      {super.key,
      required this.amount,
      required this.penaltyId,
      required this.bank});
  final int? amount;
  final String penaltyId;
  final String bank;

  @override
  State<PenaltyBottomModelSheetWidget> createState() =>
      _PenaltyBottomModelSheetWidgetState();
}

class _PenaltyBottomModelSheetWidgetState
    extends State<PenaltyBottomModelSheetWidget> {
  bool _isloading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 2.h),
          //   width: 60.w,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(4.w),
          //     topRight: Radius.circular(4.w),
          //   )),
          //   child: Image.asset(
          //     'Assets/Easypaisa.png',
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
            child: Text(
              'Bank: ${widget.bank}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            'Rs. ${widget.amount}',
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
                  onPressed: () async {
                    if (_isloading != true) {
                      setState(() {
                        _isloading = true;
                      });

                      await payPenaltyNow(widget.penaltyId, context);
                      setState(() {
                        _isloading = false;
                      });
                    }
                  },
                  child: _isloading
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text('Paynow'),
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
