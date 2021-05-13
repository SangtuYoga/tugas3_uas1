import 'package:flutter/material.dart';
import 'detail_about.dart' as detail;

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Wahyu Wastu"),
            accountEmail: Text("wahyu.wastuguna@undiksha.ac.id"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/appimage/formal.jpeg"),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.lightBlue), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            title: Text("Profile"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Log Out"),
            trailing: Icon(Icons.logout),
          ),
          ListTile(
            onTap: () {},
            title: Text("Pengaturan"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Tentang Aplikasi Pemesanan Hotel",
                  deskripsi:
                      "Aplikasi Pemesanan Hotel ini memiliki banyak pilihan hotel yang baik dan merekomendasikan pilihan hotel-hotel terbaik  ",
                  gambar: "hotel1.jpg",
                ),
              ));
            },
            title: Text(" About "),
            trailing: Icon(Icons.info_outline),
          )
        ],
      ),
    );
  }
}
