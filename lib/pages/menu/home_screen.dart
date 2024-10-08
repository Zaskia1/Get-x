import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildActionButton(Icons.payment, "Bayar"),
                  buildActionButton(Icons.account_balance_wallet, "Top Up"),
                  buildActionButton(Icons.more_horiz, "Lainnya"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                'https://yourimageurl.com/yourimage.jpg', // Ganti dengan URL gambar kamu
                fit: BoxFit.cover,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo menarik buat kamu',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        promoCard("GoCar", Icons.directions_car),
                        promoCard("GoFood", Icons.fastfood),
                        promoCard("GoMart", Icons.shopping_cart),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget promoCard(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.green),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
