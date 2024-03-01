import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Image.asset(
                'Assets/Logo.png',
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About Us',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                ),
              ),
              Text(
                'A premier housing society on Raiwind Road in Lahore. Our vision is to redefine urban living with innovative planning, prioritizing security and sustainability.\n From green spaces to cutting-edge security, we offer a safe and eco-friendly environment.\n Modern amenities, including education and healthcare facilities, enrich our vibrant community.\nAl-Kareem City is not just a housing society; it’s a celebration of contemporary living, focusing on your comfort, safety, and connection with others.\n Welcome to a thriving community where every detail enhances your quality of life.',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
