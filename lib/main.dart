// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_satya/UI/home.dart';



// Top Level
void main() {
  runApp(MyApp());
}

// Widget Stateless digunakan untuk menagani aplikasi sederhana
class MyApp extends StatelessWidget {
  @override
// Isi Dari Widget
  Widget build(BuildContext context) {
// Material App
    return MaterialApp(
      title: 'First App',
      // Home Page
      home: Home(),
    );
  }
}

// Edit di bagian ini
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// setiap body di bungkus oleh column
      body: ListView(
        children: <Widget>[
          Image.asset("assets/appimages/DanauBuyan.jpg"),
// setiap bagian body di pisahkan oleh container
          Container(
            color: Color.fromARGB(255, 101, 141, 206),
            padding: const EdgeInsets.all(15),
// untuk menampilkan secara horisontal maka menggunakan Row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Buyan Lake',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Buleleng, Bali - Indonesia',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text('14')
              ],
            ),
          ),
// setip bagian body di pisahkan oleh container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
// untuk membuat tampilan secara horisontal maka digunkan row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// untuk membuat tampilan secara vertikal maka digunkan column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.near_me, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "ROUTE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Choose from the assortment at the NBA Store to find the perfect NBA merchandise for your collection. In addition to NBA jerseys, t-shirts and sweatshirts, our shop offers tons of officially licensed NBA collectibles that you can show off in your home or office. Find the newest player merchandise like 2022 NBA Playoffs and Finals Apparel in a wide range of sizes so you and your fellow fans can represent your favorite basketball team in authentic NBA style. Browse the www.nbastore.eu for the greatest assortment of basketball jerseys and clothing online.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
