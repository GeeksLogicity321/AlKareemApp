import 'package:flutter/material.dart';
import 'package:realestate/View/BankdetailsScreen.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class BankSearchScreen extends StatefulWidget {
  BankSearchScreen({
    super.key,
    required this.ispenalty,
    this.planId,
    this.amount,
    this.plotNumber,
    this.penaltyId,
  });

  final bool ispenalty;
  final String? plotNumber;
  final String? planId;
  final int? amount;
  final String? penaltyId;

  @override
  _BankSearchScreenState createState() => _BankSearchScreenState();
}

class _BankSearchScreenState extends State<BankSearchScreen> {
  List<String> banks = [
    'Sada Pay',
    'Easypaisa',
    'Naya Pay',
    'Habib Metropolitan',
    'Dubai Bank',
    'Habib Bank Limited (HBL)',
    'United Bank Limited (UBL)',
    'MCB Bank Limited',
    'Allied Bank Limited (ABL)',
    'National Bank of Pakistan (NBP)',
    'Askari Bank Limited',
    'Bank Alfalah Limited',
    'Faysal Bank Limited',
    'Standard Chartered Bank Pakistan',
    'Silkbank Limited',
    'Bank Al-Habib Limited',
    'Soneri Bank Limited',
    'Summit Bank Limited',
    'JS Bank Limited',
    'BankIslami Pakistan Limited',
  ];

  List<String> filteredBanks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontSize: 10.sp),
              onChanged: onSearchTextChanged,
              decoration: InputDecoration(
                alignLabelWithHint: true,

                labelText: 'Search Banks',
                hintStyle: TextStyle(fontSize: 10.sp, color: Colors.grey),
                hintText: 'Enter bank name',

                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(color: kPrimaryColor),
                //   borderRadius: BorderRadius.circular(8.w),
                // ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(8.w),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount:
                  filteredBanks.isEmpty ? banks.length : filteredBanks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    // widget.penaltyId == null
                    //     ? showInstallmentCustomBottomSheet(
                    //         bank: banks[index],
                    //         context: context,
                    //         plotNumber: widget.plotNumber,
                    //         planId: widget.planId ?? '',
                    //         amount: widget.amount,
                    //       )
                    // : showPenaltyCustomBottomSheet(
                    //     bank: banks[index],
                    //     context: context,
                    //     penaltyId: widget.penaltyId!,
                    //     amount: widget.amount);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BankDetailsScreen(
                                ispenalty: widget.ispenalty,
                                bank: banks[index],
                                penaltyId: widget.penaltyId,
                                planId: widget.planId,
                                amount: widget.amount)));
                  },
                  title: Text(
                    filteredBanks.isEmpty ? banks[index] : filteredBanks[index],
                    style: TextStyle(fontSize: 12.sp),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onSearchTextChanged(String searchText) {
    searchText = searchText.toLowerCase();
    setState(() {
      filteredBanks = banks
          .where((bank) => bank.toLowerCase().contains(searchText))
          .toList();
    });
  }
}
