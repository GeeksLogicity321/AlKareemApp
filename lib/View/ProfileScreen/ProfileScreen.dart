import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sizer/sizer.dart';

import '../../Utills/AuthTockenFunctions.dart';

import '../../ViewModel/AuthProvider.dart';
import '../../Widgets/ProfileTile.dart';
import 'AccountScreen.dart';
import 'HelpCenter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const routename = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('Assets/House.png'),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountScreen()),
                      ),
                  child: Consumer<LoginProvider>(builder: (_, provider, __) {
                    return provider.userObject.data!.profilePic != null
                        ? ClipOval(
                            child: Image.network(
                              context
                                  .read<LoginProvider>()
                                  .userObject
                                  .data!
                                  .profilePic!,
                              width: 40.w,
                              height: 40.w,
                              fit: BoxFit.cover,
                            ),
                          )
                        : CircleAvatar(
                            radius: 20.w,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.camera_alt,
                              size: 10.w,
                              color: Colors.black,
                            ));
                  })),
              SizedBox(
                height: 2.h,
              ),
              Consumer<LoginProvider>(builder: (_, provider, __) {
                return Text(
                  provider.userObject.data!.name ?? '',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                );
              }),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                height: 0.11.h,
                color: Colors.grey,
              ),
              ProfileTiles(
                ontap: () {
                  // Navigator.pushNamed(context, AccountScreen.routename);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountScreen()),
                  );
                },
                title: 'Profile',
                icon: Icons.calendar_month_outlined,
              ),
              ProfileTiles(
                ontap: () {
                  // Navigator.pushNamed(context, HelpcenterScreen.routename);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpcenterScreen()),
                  );
                },
                title: 'Help center',
                icon: Icons.question_mark_rounded,
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.1),
                child: InkWell(
                  onTap: () {
                    deleteAuthTocken(context);
                  },
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
      ),
    );
  }
}
