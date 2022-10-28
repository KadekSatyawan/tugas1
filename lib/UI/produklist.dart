import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Nike",
                  description:
                      "Nike memulai rangkaian sepatunya dengan sepatu basket Nike. Sejak saat itu, Nike telah berkolaborasi dengan beberapa pemain untuk merancang sepatu basket terbaik di industri alas kaki. Sepatu basket Nike cukup trendi dan juga memberikan kenyamanan yang luar biasa serta meningkatkan performa pemain. Salah satu produk nike yaitu: 'Nike Kyrie Low 4 EP Unisex Basketball Shoes' ",
                  price: 650000,
                  image: "1.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Nike",
              description: "Nike Kyrie Low 4 EP Unisex Basketball Shoes",
              price: 650000,
              image: "1.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Adidas",
                      description:
                          " Saat ini sepatu basket banyak di jual di pasaran dengan berbagai macam brand dari dalam dan luar negeri. Salah satu brand penyedia sepatu basket terbaik di dunia adalah Adidas. Brand asal Jerman ini telah melakukan kerjasama dengan banyak pemain NBA untuk merilis signature shoes para pemain nya.",
                      price: 600000,
                      image: "2.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Adidas",
                description: "Adidas Unisex-Adult D.O.N. Issue 3 Basketball Shoe",
                price: 600000,
                image: "2.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Molten",
                      description:
                          "Kondisi: Baru "
"Berat Satuan: 700 g "
"Kategori: Bola Basket "
"Etalase: Basket "
"Bola Basket Molten GG7X Import Thailand "
""
"- Size 7 "
"- Premium Composite Leather / Bahan Kulit PU "
"- Bahan empuk dan tebal, lengket ditangan dan tidak mudah kelupas kulit "
"- Dapat digunakan indoor maupun outdoor "
"- 90% mirip original !!",
                      price: 350000,
                      image: "11.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Molten",
                description: "Molten Bola Basket B7G4000",
                price: 350000,
                image: "11.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Jersey",
                      description:
                          "-Produk asli bikinan sendiri (home industri), bukan importir, reseller maupun dropshipper "
"-Atasan saja "
"-Full printing (tampak depan, belakang dan tangan) "
"-Sablon menggunakan teknik sublimasi dengan menggunakan tinta import (warna lebih keluar dan tidak luntur ) "
"-Jahitan rapi dan kuat "
"-Menyerap keringat "
"-Packing plastik "
"-High quality",
                      price: 255000,
                      image: "22.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Jersey",
                description: "AZA x West Bandits Jersey Basketball",
                price: 255000,
                image: "22.jpg",
                star: 5),
          ),
          
        ],
      ),
    );
  }
}


// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
