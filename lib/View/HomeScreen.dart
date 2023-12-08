import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:realestate/constants/constants.dart';

class HomePageScreen extends StatelessWidget {
  static const routename = 'HomePageScreen';

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(),
      screens: [
        // Define your screens here
        Scaffold(body: Center(child: Text('Screen 1'))),
        Scaffold(body: Center(child: Text('Screen 2'))),
        Scaffold(body: Center(child: Text('Screen 3'))),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          activeColorSecondary: Colors.white,
          title: ("Home"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.search),
          activeColorSecondary: Colors.white,
          title: 'Screen 2',
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.person,
          ),
          title: 'Screen 3',
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
