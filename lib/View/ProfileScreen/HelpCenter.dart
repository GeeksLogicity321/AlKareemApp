import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class HelpcenterScreen extends StatefulWidget {
  const HelpcenterScreen({super.key});
  static const routename = 'HelpcenterScreen';

  @override
  State<HelpcenterScreen> createState() => _HelpcenterScreenState();
}

class _HelpcenterScreenState extends State<HelpcenterScreen> {
  final List<Widget> _tabs = [
    const FaqTab(),
    const ContactUsTab(),
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
            'Help centre',
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
              Tab(text: 'FAQ'),
              Tab(text: 'Contact Us'),
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

class FaqTab extends StatelessWidget {
  const FaqTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: []);
  }
}

class ContactUsTab extends StatelessWidget {
  const ContactUsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(children: [
          HelpCenterTile(
            icon: Icons.support_agent,
            title: 'Customer Service',
          ),
          HelpCenterTile(
            image: 'Assets/Mask group.png',
            title: 'Whatsapp',
          ),
          HelpCenterTile(
            icon: Icons.language_rounded,
            title: 'website',
          ),
          HelpCenterTile(
            image: 'Assets/Mask group (1).png',
            title: 'Twitter',
          ),
          HelpCenterTile(
            image: 'Assets/Mask group (2).png',
            title: 'Instagram',
          ),
          HelpCenterTile(
            icon: Icons.facebook,
            title: 'facebook',
          ),
        ]),
      ),
    );
  }
}

class HelpCenterTile extends StatelessWidget {
  HelpCenterTile({super.key, this.icon, required this.title, this.image});
  IconData? icon;
  String title;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.w),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon == null
              ? Image.asset(image!)
              : Icon(
                  icon,
                  color: kPrimaryColor,
                  size: 4.h,
                ),
          Text(
            title,
            style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
