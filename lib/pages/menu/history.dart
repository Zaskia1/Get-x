import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Transaksi Terakhir',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            transactionCard(
              'Pembayaran Tagihan Listrik',
              'Rp 200.000',
              Icons.electric_bike,
              Colors.blue,
            ),
            transactionCard(
              'Pembelian Pulsa XL',
              'Rp 50.000',
              Icons.phone_android,
              Colors.green,
            ),
            transactionCard(
              'Top Up Saldo Gopay',
              'Rp 100.000',
              Icons.account_balance_wallet,
              Colors.orange,
            ),
            transactionCard(
              'Pembelian Tiket Kereta',
              'Rp 150.000',
              Icons.train,
              Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget transactionCard(String title, String amount, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 40),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  amount,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

