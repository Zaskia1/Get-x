import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      color: Colors.green, // Warna latar belakang hijau
      child: Image.asset(
        'assets/images/maem.png',
        fit: BoxFit.cover, // Mengatur cara gambar ditampilkan
      ),
    );
  }
}
