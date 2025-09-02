import 'package:flutter/material.dart';
import 'package:flutter_android/controller/controller_database.dart';

class MobileLayout extends StatelessWidget {
  final FavoriteController favoriteController;

  MobileLayout({required this.favoriteController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteController.favoriteList.length,
      itemBuilder: (context, index) {
        final item = favoriteController.favoriteList[index];

        return ListTile(
          leading: Container(
            width: 50, // Atur lebar yang diinginkan
            height: 50, // Atur tinggi yang diinginkan
            child: Image.asset(
              item.imgPath,
              fit: BoxFit.cover, // Pastikan gambar sesuai dengan container
            ),
          ),
          title: Text(item.name),
          trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () async {
              // Cek jika id tidak null
              if (item.id != null) {
                print('ID Item yang dihapus: ${item.id}'); // Log id item

                // Hapus dari daftar favorit
                await favoriteController.removeFavorite(item.id!);

                // Feedback kepada user
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${item.name} dihapus dari favorit'),
                ));
              } else {
                print('ID item null, tidak dapat dihapus');
              }
            },
          ),
        );
      },
    );
  }
}
