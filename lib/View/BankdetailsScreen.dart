import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Utills/BottomModelSheet.dart';
import '../constants/constants.dart';
import 'ProfileScreen/Terms&Conditions.dart';

class BankDetailsScreen extends StatelessWidget {
  BankDetailsScreen({
    super.key,
    required this.ispenalty,
    this.planId,
    this.amount,
    this.plotNumber,
    this.penaltyId,
    this.bank,
  });

  final bool ispenalty;
  final String? plotNumber;
  final String? planId;
  final int? amount;
  final String? penaltyId;
  final String? bank;

  final TextEditingController _accountNameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  final TextEditingController _bankNameController = TextEditingController();

  // final TextEditingController _branchController = TextEditingController();

  // final TextEditingController _ifscController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Bank Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              style: TextStyle(fontSize: 10.sp),
              controller: _accountNameController,
              decoration: InputDecoration(
                labelText: 'Account Name',
                labelStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                hintStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              style: TextStyle(fontSize: 10.sp),
              controller: _accountNumberController,
              decoration: InputDecoration(
                labelText: 'Account Number',
                labelStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                hintStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              style: TextStyle(fontSize: 10.sp),
              controller: _bankNameController,
              decoration: InputDecoration(
                labelText: 'Bank Name',
                labelStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                hintStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('Assets/CraditCard.png'),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsConditionsScreen()),
                        ),
                    child: Text(
                      'accept terms and conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                      ),
                    )),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                !ispenalty
                    ? showInstallmentCustomBottomSheet(
                        bank: bank ?? '',
                        context: context,
                        plotNumber: plotNumber,
                        planId: planId ?? '',
                        amount: amount,
                      )
                    : showPenaltyCustomBottomSheet(
                        bank: bank ?? '',
                        context: context,
                        penaltyId: penaltyId!,
                        amount: amount);
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
