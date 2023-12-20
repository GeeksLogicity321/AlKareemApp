import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/HomeFeaturedWidget.dart';

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
                HomeFeaturedWidget(
                  imagePath: 'Assets/clubhouse.png',
                  title: 'Clubs',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/healthcare.png',
                  title: 'Medical',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/horticulture.png',
                  title: 'Horticulture',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/WaterBill.png',
                  title: 'Maintenance',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/sports.png',
                  title: 'Sports',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/open-book.png',
                  title: 'Education',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/book.png',
                  title: 'Library',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/mosque.png',
                  title: 'Religious',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/tombstone.png',
                  title: 'GraveYards',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/policeman.png',
                  title: 'Security',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/Complaints.png',
                  title: 'Cinema',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/WaterBill.png',
                  title: 'HR',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/Complaints.png',
                  title: 'Executive\nService',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/WaterBill.png',
                  title: 'Marketing',
                ),
                HomeFeaturedWidget(
                  imagePath: 'Assets/WaterBill.png',
                  title: 'Property\nExchange',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
