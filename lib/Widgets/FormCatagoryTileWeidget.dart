import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/FormsScreen.dart';
import 'package:realestate/ViewModel/CatagoryProvider.dart';
import 'package:sizer/sizer.dart';

class FormCatagoryWeidget extends StatelessWidget {
  FormCatagoryWeidget({
    super.key,
    this.title,
    required this.id,
  });
  String? title;
  String id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<CatagoryProvider>().setSelected(id, context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FormsScreen2()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1.w),
          border: Border.all(color: Colors.black, width: 1.5),
        ),
        child: Row(
          children: [
            Image.asset(
              'Assets/form.png',
              height: 4.h,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              title ?? '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
