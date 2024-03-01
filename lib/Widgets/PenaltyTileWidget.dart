import 'package:flutter/material.dart';
import 'package:realestate/View/BanksScreen.dart';
import 'package:sizer/sizer.dart';

class PenaltyTileWidget extends StatelessWidget {
  PenaltyTileWidget({
    super.key,
    required this.reason,
    required this.amount,
    required this.penaltyId,
    required this.dueDate,
    required this.status,
  });
  final String reason;
  final int amount;
  final String dueDate;
  final String penaltyId;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: status ? Colors.green : Colors.blue,
          child: Image.asset('Assets/image 21.png'),
        ),
        title: Text(
          'Reason: $reason',
          style: TextStyle(
            fontSize: 13.sp,
            color: status ? Colors.grey : Colors.black,
          ),
        ),
        subtitle: Text(
          dueDate,
          style: TextStyle(
              fontSize: 13.sp, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        trailing: Column(
          children: [
            Text('Rs. ${amount.toString()}',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: status ? Colors.green : Colors.grey,
                    fontWeight: FontWeight.bold)),
            status
                ? Text('paid',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.green,
                    ))
                : InkWell(
                    onTap: () {
                      // showPenaltyCustomBottomSheet(
                      //     context: context,
                      //     amount: amount,
                      //     penaltyId: penaltyId);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => BankSearchScreen(
                                  ispenalty: true,
                                  amount: amount,
                                  penaltyId: penaltyId))));
                    },
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
          ],
        ),
      ),
    );
  }
}
