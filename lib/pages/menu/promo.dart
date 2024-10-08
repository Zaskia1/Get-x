import 'package:flutter/material.dart';
import 'package:flutter_android/widgets/promo_widget.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Promo Utama
            PromoWidget(
              title: "27",
              subtitle: "Voucher & paket",
              icon: Icons.local_offer,
            ),
            PromoWidget(
              title: "0",
              subtitle: "Langganan",
              icon: Icons.subscriptions,
            ),
            PromoWidget(
              title: "Masukkan kode promo",
              subtitle: "",
              icon: Icons.qr_code,
            ),
            PromoWidget(
              title: "Ajak teman, dapat voucher",
              subtitle: "",
              icon: Icons.people,
            ),
            // Bagian Promo Menarik Buat Kamu
            SizedBox(height: 20),
            Text(
              "Promo Menarik Buat Kamu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // Tambahkan widget lain untuk promo sesuai desain kamu
          ],
        ),
      ),
    );
  }
}
