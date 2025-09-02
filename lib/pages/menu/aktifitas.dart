import 'package:flutter/material.dart';
import 'package:flutter_android/widgets/aktifitas_item.dart'; // Import AktivitasItem dari file baru

class Aktivitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aktivitas'),
          bottom: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
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
            RiwayatTab(screenWidth: screenWidth),
            Center(child: Text('Dalam Proses')),
            Center(child: Text('Terjadwal')),
            Center(child: Text('Draf')),
          ],
        ),
      ),
    );
  }
}

class RiwayatTab extends StatelessWidget {
  final double screenWidth;

  RiwayatTab({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(screenWidth * 0.04),
      children: [
        AktivitasItem(
          title: "Mie Gacoan, Kudus",
          subtitle: "Makanan udah sampai",
          price: "Rp100.500",
          imagePath: 'assets/images/gacoan.jpg',
          status: "Makanan udah sampai",
        ),
        SizedBox(height: screenWidth * 0.05),
        AktivitasItem(
          title: "Transaksi GoPay",
          subtitle: "Pembayaran berhasil",
          price: "Rp50.000",
          imagePath: 'assets/images/gopay.jpg',
          status: "Pembayaran berhasil",
        ),
      ],
    );
  }
}

