import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/controller/controller_database.dart';
import 'package:flutter_android/widgets/build_cart.dart';
import 'package:get/get.dart';
import 'package:flutter_android/widgets/promo_widget.dart';



class Home extends StatelessWidget {
  final FavoriteController favoriteController = Get.put(FavoriteController());

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
                              fontSize: 9.0, // Ukuran font diperkecil
                            ),
                          ),
                          SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Pakai Promonya Sekarang!",
                              style: TextStyle(fontSize: 9.0), // Ukuran font pada tombol diperkecil
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 7), // Ukuran tombol diperkecil
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/makan.png',
                        height: 85,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    buildMenuItem("YuRide", 'assets/images/yuRide.jpg'),
                    buildMenuItem("YuCar", 'assets/images/yuCar.jpg'),
                    buildMenuItem("YuFood", 'assets/images/yuFood.jpg'),
                    buildMenuItem("YuSend", 'assets/images/yuSend.jpg'),
                    buildMenuItem("YuMart",'assets/images/yuMart.jpg'),
                    buildMenuItem("YuTagihan", 'assets/images/yuTagihan.jpg'),
                    buildMenuItem("YuShop", 'assets/images/yuShop.jpg'),
                    buildMenuItem("Lainnya", 'assets/images/lainnya.jpg'),
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

              // Konten Bawah (Daftar Restoran dengan Icon Love)
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
                          RestoCard(name: "Sushi Den", imgPath: 'assets/images/restoranSushi.jpg'),
                          RestoCard(name: "Resto Hatsuhana", imgPath: 'assets/images/restoran1.jpg'),
                          RestoCard(name: "Resto Prato", imgPath: 'assets/images/restoran2.jpg'),
                          RestoCard(name: "Resto Gokil", imgPath: 'assets/images/restoran3.jpg'),
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
                          RestoCard(name: "Mie Gacoan", imgPath: 'assets/images/mieGacoan.jpg'),
                          RestoCard(name: "Nasgor Gokil", imgPath: 'assets/images/nasgor.jpg'),
                          RestoCard(name: "Chicken Katsu", imgPath: 'assets/images/chicken.jpg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Promo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
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
                    SizedBox(height: 20),
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
              fit: BoxFit.cover,
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

