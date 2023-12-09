import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class MyRentScreen extends StatefulWidget {
  const MyRentScreen({super.key});

  @override
  State<MyRentScreen> createState() => _MyRentScreenState();
}

class _MyRentScreenState extends State<MyRentScreen> {
  final List<Widget> _tabs = [
    const ActiveTab(),
    const CompletedTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: true,
          title: const Text(
            'My Rent',
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          bottom: TabBar(
            labelColor: kPrimaryColor,
            indicatorColor: kPrimaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0.7.h,
            dividerHeight: 0.7.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}

class ActiveTab extends StatelessWidget {
  const ActiveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.w),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              height: 20.h,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.w),
                      child: Image.asset(
                        'Assets/Splash.jpeg',
                        fit: BoxFit.cover,
                        height: 20.h,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Block Jinnah',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Plot No. # 234',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '15,000/- Rupees',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: kPrimaryColor,
                            ),
                          ),
                          Flexible(
                              child: Text(
                            'Payment date26/08/2022 to 26/08/2023',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          )),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: []);
  }
}
