import 'package:flutter/material.dart';
import 'package:realestate/View/BanksScreen.dart';
import 'package:sizer/sizer.dart';
import '../Utills/DateTimeFunction.dart';

class InstallmentsTile extends StatelessWidget {
  InstallmentsTile({
    super.key,
    required this.plotNumber,
    required this.planId,
    required this.amount,
    required this.dueDate,
    required this.installmentNumber,
  });
  final String plotNumber;
  final String planId;
  final int installmentNumber;
  final int amount;
  final String dueDate;

  @override
  Widget build(BuildContext context) {
    final currentMonthNotPaid = isDateGreaterThanNow(dueDate);
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
            color: currentMonthNotPaid ? Colors.black : Colors.grey,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Installment No# ${installmentNumber.toString()}',
              style: TextStyle(
                fontSize: 13.sp,
                color: currentMonthNotPaid ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              convertDateTime(dueDate),
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
                    color: currentMonthNotPaid ? Colors.black : Colors.grey,
                    fontWeight: FontWeight.bold)),
            currentMonthNotPaid
                ? InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BankSearchScreen(
                                  ispenalty: false,
                                  planId: planId,
                                  plotNumber: plotNumber,
                                  amount: amount,
                                ))),
                    child: Container(
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
                    ),
                  )
                : Text(
                    'Due Next Month',
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
          ],
        ),
      ),
    );
  }
}

class InactiveInstallmentsTile extends StatelessWidget {
  InactiveInstallmentsTile(
      {super.key, required this.plotNumber, required this.message});
  final String plotNumber;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Image.asset('Assets/image 21.png'),
        ),
        title: Text(
          'Plot No. #  $plotNumber',
          style: TextStyle(
            fontSize: 13.sp,
          ),
        ),
        subtitle: Text(
          message,
          style: TextStyle(
            fontSize: 13.sp,
          ),
        ),
        trailing: Text(
          'Paid',
          style: TextStyle(
            color: Colors.green,
            fontSize: 13.sp,
          ),
        ),
      ),
    );
  }
}
