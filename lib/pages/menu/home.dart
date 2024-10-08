import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Nasi Uduk",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Icon(Icons.account_circle),
                  ],
                ),
              ),

              // Banner Promo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pakai YuFood Temukan Pilihan Menu Favoritmu",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Pakai Promonya Sekarang!"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.green, backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/makan.png', // Sesuaikan dengan gambar yang kamu miliki
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ),

        Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rp0",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("0 coins",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    buildActionButton(Icons.payment, "Bayar"),
                    SizedBox(width: 10),
                    buildActionButton(Icons.account_balance_wallet, "Top Up"),
                    SizedBox(width: 10),
                    buildActionButton(Icons.more_horiz, "Lainnya"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
              // Grid Menu
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    buildMenuItem("GoRide", "assets/goride_icon.png"),
                    buildMenuItem("GoCar", "assets/gocar_icon.png"),
                    buildMenuItem("GoFood", "assets/gofood_icon.png"),
                    buildMenuItem("GoSend", "assets/gosend_icon.png"),
                    buildMenuItem("GoMart", "assets/gomart_icon.png"),
                    buildMenuItem("GoTagihan", "assets/gotagihan_icon.png"),
                    buildMenuItem("GoShop", "assets/goshop_icon.png"),
                    buildMenuItem("Lainnya", "assets/lainnya_icon.png"),
                  ],
                ),
              ),

              // Promo Bar
              Container(
                width: double.infinity,
                color: Colors.green[100],
                padding: EdgeInsets.all(15),
                child: Text(
                  "Diskon s.d. 12rb/transaksi. Yuk, langganan",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),

              // Konten Bawah (Misalnya Rekomendasi Restoran)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resto dengan rating jempolan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildRestoCard("Sushi Den", 'assets/images/restoranSushi.jpg'),
                          buildRestoCard("Hatsuhana Sushi", "assets/sushi2.png"),
                          buildRestoCard("Prato Sushi", "assets/sushi3.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "yufood",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Pilihan Terlaris",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildRestoCard("Sushi Den", "assets/images/sushi4.jpg"),
                          buildRestoCard("Hatsuhana Sushi", "assets/sushi2.png"),
                          buildRestoCard("Prato Sushi", "assets/sushi3.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, String iconPath) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Center(
            child: Image.asset(
              iconPath,
              height: 30,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget buildRestoCard(String name, String imgPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgPath,
              height: 120,
              width: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget buildActionButton(IconData icon, String label) {
  return Column(
    children: [
      Container(
        height: 50, // Ukuran untuk ikon tombol
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200], // Warna background lingkaran tombol
          shape: BoxShape.circle, // Bentuk tombol bulat
        ),
        child: Icon(icon, color: Colors.blue), // Ikon di tengah tombol
      ),
      SizedBox(height: 5), // Spasi antara ikon dan label
      Text(
        label,
        style: TextStyle(fontSize: 12, color: Colors.black), // Teks di bawah ikon
      ),
    ],
  );
}
