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
    // Mendapatkan lebar layar untuk responsivitas
    var screenWidth = MediaQuery.of(context).size.width;

    return Card(
      margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar dengan ukuran tetap dan responsive
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * 0.04), // Jarak antara gambar dan teks
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: screenWidth * 0.01),
                  Text(subtitle, style: TextStyle(fontSize: 12.0)), // Mengatur subtitle agar lebih kecil
                  SizedBox(height: screenWidth * 0.01),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green, size: 12.0),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        status,
                        style: TextStyle(color: Colors.green, fontSize: 12.0), // Mengatur status agar lebih kecil
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 3),
                FittedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text('Mau lagi'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
