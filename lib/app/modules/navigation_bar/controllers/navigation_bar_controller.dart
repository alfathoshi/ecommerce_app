import 'package:ecommerce_app/app/modules/home/views/home_view.dart';
import 'package:ecommerce_app/app/modules/profile/views/profile_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  final List<Widget> pages = [
    HomeView(),
    Container(),
    Container(),
    ProfileView(),
  ];

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
