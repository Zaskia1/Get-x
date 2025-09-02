import 'package:flutter/material.dart';
import 'package:flutter_android/model/favorite_model.dart';
import 'package:flutter_android/controller/controller_database.dart';
import 'package:get/get.dart';

class RestoCard extends StatelessWidget {
  final String name;
  final String imgPath;
  final FavoriteController favoriteController = Get.find();

  RestoCard({required this.name, required this.imgPath}); // Pastikan parameter diterima dengan benar

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imgPath, // Pastikan imgPath digunakan di sini
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Obx(() {
                    bool isFavorite = favoriteController.favoriteList
                        .any((fav) => fav.name == name); // Pastikan name juga di-pass di sini

                    return IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                      onPressed: () async {
                        if (isFavorite) {
                          Favorite fav = favoriteController.favoriteList
                              .firstWhere((fav) => fav.name == name);
                          await favoriteController.removeFavorite(fav.id!);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Removed from favorites!'),
                          ));
                        } else {
                          await favoriteController.addFavorite(Favorite(
                            id: DateTime.now().millisecondsSinceEpoch,
                            name: name, // Pastikan name benar di-pass di sini
                            imgPath: imgPath, description: '', // Pastikan imgPath di-pass juga
                          ));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Added to favorites!'),
                          ));
                        }
                      },
                    );
                  }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name, // Display the name of the restaurant
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

