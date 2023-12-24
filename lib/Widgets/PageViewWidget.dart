import 'package:flutter/material.dart';
import 'package:realestate/Models/PlanIdModel.dart';
import 'package:sizer/sizer.dart';

import '../View/PropertyDetailScreen.dart';

class PageViewWidget extends StatelessWidget {
  PageViewWidget({
    super.key,
    required this.planIdObject,
  });

  PlanId planIdObject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PropertyDetailScreen(
                    plainIdObject: planIdObject,
                  )),
        );
        // Navigator.pushNamed(context, PropertyDetailScreen.routename);
      },
      child: Stack(
        children: [
          Container(
            width: 50.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        const AssetImage('Assets/unsplash_hHz4yrvxwlA.png'))),
            child: Align(
              alignment: Alignment(-0.1.w, 0.6),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planIdObject.plotId!.blockNumber!.blockName!,
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${planIdObject.plotId!.sqYard} sq. yards',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.white,
                    ),
                  ),
                  // Text(
                  //   'West Open',
                  //   style: TextStyle(
                  //     fontSize: 10.sp,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  SizedBox(
                    height: 1.h,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 1.h,
              right: 15.w,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
