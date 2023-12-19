import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:realestate/View/HomeScreen.dart';
import 'package:realestate/View/InstallMentsScreen.dart';
import 'package:realestate/View/PenaltyScreen.dart';
import 'package:realestate/View/ProfileScreen/ProfileScreen.dart';
import 'package:realestate/constants/constants.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  static const routename = 'BottomNavigationBarWidget';

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(),
      screens: [
        // Define your screens here
        HomeScreen(),
        // InstallMentsScreen(),
        PenaltyScreen(),
        ProfileScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          activeColorSecondary: Colors.white,
          title: ("Home"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        // PersistentBottomNavBarItem(
        //   icon: Image.asset('Assets/image 6.png'),
        //   activeColorSecondary: Colors.white,
        //   title: 'Installments',
        //   activeColorPrimary: kPrimaryColor,
        //   inactiveColorPrimary: Colors.grey,
        // ),
        PersistentBottomNavBarItem(
          icon: Image.asset('Assets/image 7.png'),
          title: 'Penalty',
          activeColorPrimary: kPrimaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.person,
          ),
          title: 'Profile',
          activeColorPrimary: kPrimaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style7,
    );
  }
}
