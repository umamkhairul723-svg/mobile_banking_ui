import 'package:flutter/material.dart';

void main() {
  runApp(MyBank());
}

class MyBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  Widget menu(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyBank Mobile"),
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          /// CARD SALDO
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Saldo",
                    style: TextStyle(color: Colors.white70)),
                SizedBox(height: 10),
                Text("Rp 4.800.000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          SizedBox(height: 20),

          /// MENU
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              menu(Icons.send, "Transfer"),
              menu(Icons.qr_code, "QR"),
              menu(Icons.phone_android, "Pulsa"),
              menu(Icons.receipt, "Tagihan"),
            ],
          ),

          SizedBox(height: 20),

          Text("Transaksi Terakhir",
              style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          Card(
            child: ListTile(
              leading: Icon(Icons.money),
              title: Text("Transfer"),
              subtitle: Text("20 Maret 2026"),
              trailing: Text("-Rp100.000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.money),
              title: Text("Gaji"),
              subtitle: Text("18 Maret 2026"),
              trailing: Text("+Rp3.000.000"),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}