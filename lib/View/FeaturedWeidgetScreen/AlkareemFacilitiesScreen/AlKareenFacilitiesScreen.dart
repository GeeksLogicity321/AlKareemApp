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
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/clubhouse.png',
                    title: 'Clubs',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/healthcare.png',
                    title: 'Medical',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/horticulture.png',
                    title: 'Horticulture',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'Maintenance',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/sports.png',
                    title: 'Sports',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/open-book.png',
                    title: 'Education',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/book.png',
                    title: 'Library',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/mosque.png',
                    title: 'Religious',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/tombstone.png',
                    title: 'GraveYards',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/policeman.png',
                    title: 'Security',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/Complaints.png',
                    title: 'Cinema',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'HR',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/Complaints.png',
                    title: 'Executive\nService',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HomeFeaturedWidget(
                    imagePath: 'Assets/WaterBill.png',
                    title: 'Marketing',
                  ),
                ),
                InkWell(
                  onTap: () {},
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
