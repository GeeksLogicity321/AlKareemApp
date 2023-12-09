import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'NotificationScreen.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});
  static const routename = 'SecurityScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: const Text(
          'Security',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 6.w),
        child: Column(
          children: [
            NotificationTile(
              title: 'Remember me',
            ),
            NotificationTile(
              title: 'Face id',
            ),
            NotificationTile(
              title: 'Biometric',
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Google Authenticator',
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Change PIN'),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Change Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
