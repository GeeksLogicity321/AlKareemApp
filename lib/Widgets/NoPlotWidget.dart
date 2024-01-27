import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../ViewModel/AuthProvider.dart';

class NoPlotsWidget extends StatelessWidget {
  const NoPlotsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'Assets/opps.png',
            width: 30.w,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(top: 2.5.h),
              child: Consumer<LoginProvider>(builder: (_, provider, __) {
                return Text(
                  "Dear ${provider.userObject.data!.name ?? 'User'} You Have'nt bought any Plot",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
