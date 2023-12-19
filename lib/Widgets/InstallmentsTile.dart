import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InstallmentsTile extends StatelessWidget {
  InstallmentsTile({
    super.key,
    required this.plotNumber,
    required this.amount,
    required this.blockName,
  });
  String plotNumber;
  String blockName;
  int amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Image.asset('Assets/image 21.png'),
        ),
        title: Text(
          'Plot No. #  $plotNumber',
          style: TextStyle(
            fontSize: 13.sp,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              blockName,
              style: TextStyle(
                fontSize: 13.sp,
              ),
            ),
            Text(
              'Date   |   15-Dec-2023',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        trailing: Column(
          children: [
            Text('Rs. ${amount.toString()}',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            Container(
              height: 3.h,
              width: 20.w,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(6.w)),
              child: Center(
                  child: Text('Pay Now',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
