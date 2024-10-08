import 'package:flutter/material.dart';

class AktivitasItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final String status;

  AktivitasItem({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(imagePath, width: 50, height: 50),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            SizedBox(height: 4.0),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 16.0),
                SizedBox(width: 4.0),
                Text(status, style: TextStyle(color: Colors.green)),
              ],
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Warna tombol hijau
              ),
              child: Text('Mau lagi'),
            ),
          ],
        ),
      ),
    );
  }
}
