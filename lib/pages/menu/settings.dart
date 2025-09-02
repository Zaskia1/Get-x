import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/kucing.jpg'), // Ganti dengan path profil gambar
          ),
          SizedBox(height: 10),
          Text(
            'Jane Kolinz',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildSettingsItem('Calendar', Icons.calendar_today),
                _buildSettingsItem('Reminder', Icons.alarm),
                _buildSettingsItem('Rate us on App store', Icons.star),
                _buildSettingsItem('Terms & Conditions', Icons.info),
                _buildSettingsItem('Sign out', Icons.logout),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(String title, IconData icon) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 18)),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
      leading: Icon(icon, color: Colors.green),
      onTap: () {
        // Tambahkan action sesuai kebutuhan
      },
    );
  }

  Widget _buildSocialIcon(String iconPath) {
    return GestureDetector(
      onTap: () {
        // Tambahkan link ke sosial media
      },
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(iconPath),
      ),
    );
  }
}
