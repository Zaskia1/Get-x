import 'package:flutter_android/controller/bottom_nav_ctr.dart';
import 'package:flutter_android/pages/menu/history.dart';
import 'package:flutter_android/pages/menu/home.dart';
import 'package:flutter_android/pages/menu/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //connect ui ke controller
    final BottomNavCtr bottomNavCtr = Get.put(BottomNavCtr());

    final List<Widget> menus = [Home(), History(), Profile(),];

    return Obx((){
      return Scaffold(
        body: menus[bottomNavCtr.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavCtr.selectedIndex.value,
          onTap: bottomNavCtr.changeIndexMenu,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],),
      );
    });
  }
}

