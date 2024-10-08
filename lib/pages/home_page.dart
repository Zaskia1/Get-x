import 'package:flutter_android/controller/bottom_nav_ctr.dart';
import 'package:flutter_android/pages/menu/aktifitas.dart';
import 'package:flutter_android/pages/menu/history.dart';
import 'package:flutter_android/pages/menu/home.dart';
import 'package:flutter_android/pages/menu/chat.dart';
import 'package:flutter_android/pages/menu/promo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //connect ui ke controller
    final BottomNavCtr bottomNavCtr = Get.put(BottomNavCtr());

    // Tambahkan halaman baru ke dalam menus
    final List<Widget> menus = [Home(), PromoPage(), Aktivitas(), Chat()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavCtr.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavCtr.selectedIndex.value,
          onTap: bottomNavCtr.changeIndexMenu,

          // Warna item yang dipilih dan tidak dipilih
          selectedItemColor: Colors.blue, // Warna untuk item yang dipilih
          unselectedItemColor: Colors.grey, // Warna untuk item yang tidak dipilih

          // Menampilkan atau menyembunyikan label
          showSelectedLabels: true,
          showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: "Promo",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Chat",
            ),
          ],
        ),
      );
    });
  }
}
