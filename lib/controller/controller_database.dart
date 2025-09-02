import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_android/model/favorite_model.dart';
import 'dart:convert'; // To encode/decode JSON

class FavoriteController extends GetxController {
  var favoriteList = <Favorite>[].obs; // Observable list for favorites
  var isLoved = false.obs; // Observable boolean for love icon

  @override
  void onInit() {
    super.onInit();
    fetchFavorites(); // Load existing favorites
  }

  // Fetch favorites from SharedPreferences
  Future<void> fetchFavorites() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? favoritesString = prefs.getString('favorites');

      if (favoritesString != null) {
        List<dynamic> decodedList = jsonDecode(favoritesString);
        favoriteList.value = decodedList
            .map((item) => Favorite.fromMap(item))
            .toList();
      }
    } catch (e) {
      print("Error fetching favorites: $e");
    }
  }

  // Add a favorite to SharedPreferences
  Future<void> addFavorite(Favorite favorite) async {
    try {
      favoriteList.add(favorite);
      isLoved.value = true; // Set icon love to red
      await _saveFavorites();
    } catch (e) {
      print("Error adding favorite: $e");
    }
  }
  Future<void> removeFavorite(int id) async {
    try {
      // Log sebelum menghapus
      print("Menghapus item dengan ID: $id");

      favoriteList.removeWhere((fav) => fav.id == id); // Hapus dari list
      print("Item berhasil dihapus dari list, tersisa: ${favoriteList.length}");

      await _saveFavorites(); // Simpan ke SharedPreferences
      print("Item berhasil dihapus dari SharedPreferences");
    } catch (e) {
      print("Error removing favorite: $e");
    }
  }


  // Save the current favorites list to SharedPreferences
  // Fungsi untuk menyimpan daftar favorit ke SharedPreferences
  Future<void> _saveFavorites() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String encodedList = jsonEncode(favoriteList.map((fav) => fav.toMap()).toList());

      // Pastikan id tersimpan di SharedPreferences
      print("Data yang disimpan ke SharedPreferences: $encodedList");

      await prefs.setString('favorites', encodedList);
    } catch (e) {
      print("Error saving favorites: $e");
    }
  }



  // Check if an item is favorite
  Future<bool> isFavorite(int id) async {
    return favoriteList.any((fav) => fav.id == id);
  }
}
