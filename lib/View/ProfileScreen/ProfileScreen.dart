import 'package:flutter/material.dart';
import 'package:realestate/View/ProfileScreen/AccountScreen.dart';
import 'package:realestate/View/ProfileScreen/HelpCenter.dart';
import 'package:realestate/View/ProfileScreen/LanguageScreen.dart';
import 'package:realestate/View/ProfileScreen/NotificationScreen.dart';
import 'package:realestate/View/ProfileScreen/PaymentsScreen.dart';
import 'package:realestate/View/ProfileScreen/SecurityScreen.dart';
import 'package:realestate/Widgets/ProfileTile.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
   static const routename = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('Assets/House.png'),
        title: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        actions: [IconButton(onPressed: (){}, icon:Icon( Icons.more_vert,color: Colors.black,))],
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 2.h,),
              
              
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AccountScreen.routename);
                },
                child: Image.asset('Assets/Group 43.png')),
                SizedBox(height: 2.h,),
              
              Text('Muhammad kareem',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                SizedBox(height: 2.h,),
              Container(
                width: double.infinity,
                height: 0.11.h,color: Colors.grey,),
          
                ProfileTiles(ontap: (){

                }, title: 'Due Date',icon: Icons.calendar_month_outlined,),
                ProfileTiles(ontap: (){
                  // Navigator.pushNamed(context, PaymentssScreen.routename);
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentssScreen()),
  );
                }, title: 'Payments',icon: Icons.wallet),
                Container(
                width: double.infinity,
                height: 0.11.h,color: Colors.grey,),
          
                ProfileTiles(ontap: (){
                    // Navigator.pushNamed(context, AccountScreen.routename);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProfileScreen()),
  );
                }, title: 'Profile',icon: Icons.calendar_month_outlined,),
                ProfileTiles(ontap: (){
                    // Navigator.pushNamed(context, NotificationScreen.routename);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NotificationScreen()),
  );
                }, title: 'Notification',icon: Icons.wallet),
                ProfileTiles(ontap: (){
                    // Navigator.pushNamed(context, SecurityScreen.routename);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SecurityScreen()),
  );
                }, title: 'Security',icon: Icons.shield_outlined,),
                ProfileTiles(ontap: (){
                    // Navigator.pushNamed(context, LanguageScreen.routename);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LanguageScreen()),
  );
                }, title: 'Language',icon: Icons.g_translate),
                ProfileTiles(ontap: (){
                    // Navigator.pushNamed(context, HelpcenterScreen.routename);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HelpcenterScreen()),
  );
                }, title: 'Help center',icon: Icons.question_mark_rounded,),
                SizedBox(height: 2.h,),
                Padding(
                padding: const EdgeInsets.only(top: 0.1),
                child: InkWell(
          onTap: () {},
          child: ListTile(
           tileColor: Colors.transparent,
            leading: Icon(
              Icons.login,
              color: Colors.red,
            ),
            title: Text(
              'Logout',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
            ),
           
          ),
                ),
              ),
          
            
            
            
            ],
          ),
        ),
    );
  }
}