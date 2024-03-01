import 'package:flutter/material.dart';
import 'package:realestate/Utills/UrlLancher.dart';
import 'package:sizer/sizer.dart';

import '../../Utills/GoogleMapFunction.dart';
import '../../constants/ApiConstants.dart';

class WhoWeAreScreen extends StatelessWidget {
  const WhoWeAreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Who we are'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
          child: Column(
            children: [
              // Text(
              //   'Welcome to',
              //   style: Theme.of(context).textTheme.titleLarge,
              //   textAlign: TextAlign.center,
              // ),
              Image.network(
                'https://al-kareemcity.com/wp-content/uploads/2024/02/Nazir-Ahmed-Chohan.png',
                height: 20.h,
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Chairman Message',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "At Al-Kareem City, we believe in crafting more than just homes; we believe in shaping lifestyles. Our commitment to redefining urban living is evident in every facet of our society, from innovative urban planning to a focus on sustainability. We aspire to create not just a living space but a vibrant community that thrives on connection and well-being.In our journey towards the future, we are committed to being a driving force for positive change in Lahore. Our dedication to providing modern amenities, fostering education, and prioritizing sustainability reflects our belief in contributing to the city’s growth.Our commitment to excellence extends to every aspect of our operations. From selecting prime locations to collaborating with the best industry professionals, we ensure that every project bears the mark of quality and attention to detail. We embrace the latest technologies and architectural trends, continuously pushing the boundaries of innovation to deliver spaces that genuinely resonate with your aspirations.",
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '- Nazir Chohan',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contact Us',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  callPhoneNumber('0304 1111848');
                },
                child: Row(
                  children: [
                    Icon(Icons.call_outlined),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '0304 1111848',
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  sendEmail('contact@al-kareemcity.com');
                },
                child: Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'contact@al-kareemcity.com',
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  openGoogleMaps(ApiConstants.alKareemCordinates.latitude,
                      ApiConstants.alKareemCordinates.longitude, context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.pin_drop_outlined),
                    SizedBox(
                      width: 2.w,
                    ),
                    Flexible(
                      child: Text(
                        'Main Raiwand Road, Near Jinnah Terminal, Lahore',
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
