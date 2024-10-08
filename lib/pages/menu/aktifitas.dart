import 'package:flutter/material.dart';
import 'package:flutter_android/widgets/aktifitas_item.dart'; // Import AktivitasItem dari file baru

class Aktivitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aktivitas'),
          bottom: TabBar(
            indicatorColor: Colors.green, // Warna indikator aktif
            labelColor: Colors.black, // Warna teks tab yang aktif
            unselectedLabelColor: Colors.grey, // Warna teks tab yang tidak aktif
            tabs: [
              Tab(text: "Riwayat"),
              Tab(text: "Dalam Proses"),
              Tab(text: "Terjadwal"),
              Tab(text: "Draf"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RiwayatTab(), // Konten untuk tab Riwayat
            Center(child: Text('Dalam Proses')), // Konten untuk tab Dalam Proses
            Center(child: Text('Terjadwal')), // Konten untuk tab Terjadwal
            Center(child: Text('Draf')), // Konten untuk tab Draf
          ],
        ),
      ),
    );
  }
}

class RiwayatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        AktivitasItem(
          title: "Mie Gacoan, Kudus",
          subtitle: "Makanan udah sampai",
          price: "Rp100.500",
          imagePath: 'assets/images/gacoan.jpg',
          status: "Makanan udah sampai", // Status hijau
        ),
        AktivitasItem(
          title: "Transaksi GoPay",
          subtitle: "Pembayaran berhasil",
          price: "Rp50.000",
          imagePath:
          'assets/images/gopay.jpg', // Ganti dengan gambar asli
          status: "Pembayaran berhasil", // Status hijau
        ),
      ],
    );
  }
}
