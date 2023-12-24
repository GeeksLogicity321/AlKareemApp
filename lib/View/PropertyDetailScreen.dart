import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';

import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Models/PlanIdModel.dart';
import '../Widgets/DetailsWidget.dart';
import '../Widgets/InstallMentWidget.dart';
import '../constants/constants.dart';

class PropertyDetailScreen extends StatelessWidget {
  PropertyDetailScreen({super.key, required this.plainIdObject});

  PlanId plainIdObject;

  static const routename = 'PropertyDetailScreen';

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF9F0),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: double.infinity,
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage(
                                              'Assets/Splash.jpeg'))),
                                ),
                                Positioned(
                                    bottom: 8.h,
                                    left: 6.w,
                                    child: Text(
                                      plainIdObject
                                          .plotId!.blockNumber!.blockName!,
                                      style: TextStyle(
                                          fontSize: 18.sp, color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 5.h,
                                    left: 6.w,
                                    child: Text(
                                        'Plot No. # ${plainIdObject.plotNumber}',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300))),
                              ],
                            );
                          }),
                    ),
                    Positioned(
                      bottom: 3.h,
                      left: 40.w,
                      child: SmoothPageIndicator(
                          effect: ExpandingDotsEffect(
                              dotColor: Colors.grey,
                              activeDotColor: kPrimaryColor),
                          controller: _pageController,
                          count: 3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Consumer<LoginProvider>(builder: (_, provider, __) {
                          return provider.userObject.data!.profilePic == null
                              ? Icon(Icons.person)
                              : Image.network(
                                  provider.userObject.data!.profilePic!);
                        }),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer<LoginProvider>(
                              builder: (_, loginProvider, __) {
                            return Text(loginProvider.userObject.data!.name!,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400));
                          }),
                          Text('Owner',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Text('Overview',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Euismod non sodales vehicula ullamcorper porttitor aliquet augue condimentum sem. Eget at molestie at nec donec consectetur. Read more...',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 4.w, bottom: 1.h),
                  child: Text('Details',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  child: Wrap(
                    spacing: 10.w,
                    runSpacing: 2.h,
                    children: [
                      DetailsWeidget(
                        icon: Icons.location_on,
                        text: 'Karachi',
                      ),
                      DetailsWeidget(
                        icon: Icons.location_searching_sharp,
                        text: 'West Open',
                      ),
                      DetailsWeidget(
                        icon: Icons.expand,
                        text: '120 sq. yards',
                      ),
                      DetailsWeidget(
                        icon: Icons.landscape,
                        text: 'Extra Land 10 sq. yards',
                      ),
                      DetailsWeidget(
                        icon: Icons.flag,
                        text: 'Corner Plot',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 4.w, bottom: 1.h),
                  child: Text("Installment Detail's",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 2.h,
                    left: 4.w,
                    right: 4.w,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Residential Plots',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                              '${plainIdObject.plotId!.sqYard ?? ''} sq. Yrds.',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 4.w,
                    right: 4.w,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 75, 75, 75),
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Description',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Amount',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      InstallmentWidget(
                        title: 'On Booking',
                        amount: [plainIdObject.bookingAmount.toString()],
                      ),
                      InstallmentWidget(
                        title: '60 Monthly Installments',
                        amount: [
                          plainIdObject.instalmentAmount.toString(),
                          '900,000'
                        ],
                      ),
                      InstallmentWidget(
                        title: 'Demarcation of plot',
                        amount: ['500,000x10', '500,000'],
                      ),
                      InstallmentWidget(
                        title: 'Demarcation of plot',
                        amount: ['100,000'],
                      ),
                      InstallmentWidget(
                        title: 'Before Possession',
                        amount: ['100,000'],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 1.h),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('TOTAL COST',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('2,100,000',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 4.w, bottom: 1.h),
                  child: Text('Important Notes:',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.w,
                  ),
                  child: Text(
                      '1. All installments must be at paid before 10th of every month',
                      style: TextStyle(
                        fontSize: 7.sp,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
                  child: Text(
                      '2. The allocation o unit shell remain provisional untill the company receives full and final payment.',
                      style: TextStyle(
                        fontSize: 7.sp,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 4.w, bottom: 1.h),
                  child: Text('Extra Charges',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
                  child: Wrap(
                    spacing: 2.w,
                    runSpacing: 1.h,
                    children: [
                      ImportantNotesWidget(
                        icon: Icons.check_box,
                        text: 'corner 10%',
                      ),
                      ImportantNotesWidget(
                        icon: Icons.check_box,
                        text: 'west open 5%',
                      ),
                      ImportantNotesWidget(
                        icon: Icons.check_box,
                        text: 'park facing 5%',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 4.w, bottom: 1.h),
                  child: Text('Installment Remaining',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 2.h,
                    left: 4.w,
                    right: 4.w,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 75, 75, 75),
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Total Installments',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Paid',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Remaining',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Upcomming',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text('60',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Container(
                      color: kPrimaryColor,
                      height: 2.h,
                      width: 0.2.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text('50',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Container(
                      color: kPrimaryColor,
                      height: 2.h,
                      width: 0.2.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text('45',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Container(
                      color: kPrimaryColor,
                      height: 2.h,
                      width: 0.2.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text('(1-dec-023)',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 4.w,
                    right: 4.w,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 75, 75, 75)),
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Total Amount',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Paid',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('Remaining',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('2,100,000',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Container(
                        color: kPrimaryColor,
                        height: 2.h,
                        width: 0.2.w,
                      ),
                      Expanded(
                        child: Center(
                          child: Text('700,000',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Container(
                        color: kPrimaryColor,
                        height: 2.h,
                        width: 0.2.w,
                      ),
                      Expanded(
                        child: Center(
                          child: Text('1400,000',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 4.w,
                    right: 4.w,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Residential Plots',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('120 sq. Yrds.',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: kPrimaryColor,
                          child: Center(
                            child: Icon(
                              Icons.priority_high_outlined,
                              color: Colors.white,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                            'Your Upcomming installment worth Rupees 15,000',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: SizedBox(
                      width: 80.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Pay Now'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
            Positioned(
                top: 4.h,
                left: 2.w,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                    size: 10.w,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
