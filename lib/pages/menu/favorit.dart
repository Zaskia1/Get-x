import 'package:flutter/material.dart';
import 'package:flutter_android/controller/controller_database.dart';
import 'package:get/get.dart';
import 'mobile_layout.dart'; // Import MobileLayout
import 'tablet_layout.dart'; // Import TabletLayout

class Favorit extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorit"),
      ),
      body: Obx(() {
        print('Jumlah item favorit sekarang: ${favoriteController.favoriteList.length}'); // Log untuk cek jumlah item di UI

        if (favoriteController.favoriteList.isEmpty) {
          return Center(child: Text("Belum ada item favorit"));
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            // Tentukan apakah menggunakan mobile layout atau tablet layout
            if (constraints.maxWidth < 600) {
              return MobileLayout(favoriteController: favoriteController);
            } else {
              return TabletLayout(favoriteController: favoriteController);
            }
          },
        );
      }),
    );
  }
}
