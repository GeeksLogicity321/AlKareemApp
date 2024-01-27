import 'package:flutter/material.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/CinemaScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/ClubsScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/EducationScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/ExecutiveScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/GraveyardScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/HorticulturalScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/HrScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/LibaryScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/MaintenanceScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/MarketingScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/MedicalScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/PropertyExchangeScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/ReligiousScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/SecurityScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/SportsScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/HomeFeaturedWidget.dart';

class FacilitiesScreen extends StatelessWidget {
  const FacilitiesScreen({super.key});
  static const routeName = "FacilitiesScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facilities'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Wrap(
              spacing: 6.w,
              runSpacing: 3.h,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ClubsScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/clubhouse.png',
                    title: 'Clubs',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MedicalScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/healthcare.png',
                    title: 'Medical',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HorticulturalScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/horticulture.png',
                    title: 'Horticulture',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MaintenanceScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'Maintenance',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SportsScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/sports.png',
                    title: 'Sports',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EducationScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/open-book.png',
                    title: 'Education',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LibaryScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/book.png',
                    title: 'Library',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReligiousScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/mosque.png',
                    title: 'Religious',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GraveyardScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/tombstone.png',
                    title: 'GraveYards',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecurityScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/policeman.png',
                    title: 'Security',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CinemaScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/Complaints.png',
                    title: 'Cinema',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HrScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'HR',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExecutiveScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/Complaints.png',
                    title: 'Executive\nService',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MarketingScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'Marketing',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyExchangeScreen()));
                  },
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'Property\nExchange',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
