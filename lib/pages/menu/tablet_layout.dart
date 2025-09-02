import 'package:flutter/material.dart';
import 'package:flutter_android/controller/controller_database.dart';

class TabletLayout extends StatelessWidget {
  final FavoriteController favoriteController;

  TabletLayout({required this.favoriteController});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 kolom untuk tablet
        childAspectRatio: 1.5, // Sesuaikan rasio anak untuk tampilan tablet
      ),
      itemCount: favoriteController.favoriteList.length,
      itemBuilder: (context, index) {
        final item = favoriteController.favoriteList[index];

        return Card(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  item.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item.name, textAlign: TextAlign.center),
              ),
              IconButton(
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
            ],
          ),
        );
      },
    );
  }
}
