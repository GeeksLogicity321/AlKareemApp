import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class TabControllerProvider extends ChangeNotifier {
  PersistentTabController _controller = PersistentTabController();

  PersistentTabController get controller => _controller;

  void changeTab(int tabnum) {
    _controller.jumpToTab(tabnum);
    notifyListeners();
  }
}
