
import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/DetailsWidget.dart';

class PropertyDetailScreen extends StatelessWidget {
  const PropertyDetailScreen({super.key});
   static const routename = 'PropertyDetailScreen';
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Colors.white,
    
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              SizedBox(
               height: 40.h,
               width: double.infinity,
                child: PageView.builder(
                  itemBuilder: (context,index) {
                    return Stack(
                      children: [
                        Container(
                          
                                     
                          
                          decoration: BoxDecoration(
                        
                            
                            image:DecorationImage(
                              fit: BoxFit.fitHeight,
                              image:  AssetImage('Assets/Splash.jpeg'))),),
          
                              Positioned(
                                bottom: 8.h,
                                left: 6.w,
                                child: Text('Block Malik',style: TextStyle(fontSize: 18.sp,color: Colors.white),)),
                              Positioned(
                                 bottom: 5.h,
                                   left: 6.w,
                                child: Text('Plot No. # 134',style: TextStyle(fontSize: 10.sp,color: Colors.white,fontWeight: FontWeight.w300))),
                      ],
                    );
                  }
                ),
          
              
          
          
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:4.w,),
                child: Row(
                  
                  children: [
                    Image.asset('Assets/Group 43.png',height: 8.h,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Muhammad Kareem',style: TextStyle(fontSize: 14.sp,color: Colors.black,fontWeight: FontWeight.w400)),
                      
                    Text('Owner',style: TextStyle(fontSize: 10.sp,color: Colors.black,fontWeight: FontWeight.w300))],)
                  ],
                ),
              ),
          
              Padding(
              padding:  EdgeInsets.symmetric(horizontal:4.w,vertical: 2.h),
                child: Text('Overview',style: TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.w500)),
              ),
          
               Padding(
                           padding:  EdgeInsets.symmetric(horizontal:4.w),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Euismod non sodales vehicula ullamcorper porttitor aliquet augue condimentum sem. Eget at molestie at nec donec consectetur. Read more...',style: TextStyle(fontSize: 10.sp,color: Colors.black,fontWeight: FontWeight.w400)),
                           ),
          
                Padding(
              padding:  EdgeInsets.only(top:2.h,left: 4.w,bottom: 1.h),
                child: Text('Details',style: TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.w500)),
              ),
              Padding(
                  padding:  EdgeInsets.symmetric(vertical:2.h,horizontal: 4.w),
                child: Wrap(
                  spacing: 10.w,
                  runSpacing: 2.h,
                  
                  children: [
                    
                    DetailsWeidget(icon: Icons.location_on,text: 'Karachi',),
                    DetailsWeidget(icon: Icons.location_searching_sharp,text: 'West Open',),
                    DetailsWeidget(icon: Icons.expand,text: '120 sq. yards',),
                    DetailsWeidget(icon: Icons.landscape,text: 'Extra Land 10 sq. yards',),
                    DetailsWeidget(icon: Icons.flag,text: 'Corner Plot',),
                    
                  ],),
              ),
              SizedBox(height: 6.h,)
          
            ],
          ),
        ),
    );
  }
}

