import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  PromoWidget({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 30),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Tambahkan aksi jika diperlukan
      },
    );
  }
}
