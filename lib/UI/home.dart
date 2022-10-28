import 'package:flutter/material.dart';
import './produklist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(index);
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ));
        break;
      case 1:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => produklist(),
            ));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Update AppBar
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[Text('Home')]),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('click seacrh');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                print('click seacrh');
              },
            ),
          ]),
      // widget drawer
      // widget drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawwer Header diisi dengan informasi akun
            UserAccountsDrawerHeader(
              accountName: const Text('Kadek Satyawan'),
              accountEmail: const Text("satyawan.2@undiksha.ac.id"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  // mengambil gamabar dari internet menggunakan NetworkImage
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVSSSwM_nAWaOA-Jh0X_q56CkDLR-tft0y2w&usqp=CAU'),
                ),
              ),
              // memberikan background pada Drawer Header
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appimages/NBA.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // Menu Drawer
            const ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.notifications_none),
            ),
            const ListTile(
              title: Text('Wishlist'),
              trailing: Icon(Icons.bookmark_border),
            ),
            const ListTile(
              title: Text('Akun'),
              trailing: Icon(Icons.verified_user),
            ),
            // Divider Menu
            const Divider(height: 2),
            const ListTile(
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            )
          ],
        ),
        // seluruh body dibungkus column
// tidak terdapat perubahan pada body pada body home.dart tugas ardi sebelumnya
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
            backgroundColor: Colors.green,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   label: 'School',
          //   backgroundColor: Colors.purple,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Column(
        children: <Widget>[
          Image.asset("assets/appimages/NBA.jpg"),
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
                        'NBA STORE DETYA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Points 15.450',
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
                Text('Up 85%')
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
                    Icon(Icons.border_all_sharp, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "All Kategori",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shop_rounded, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Shoes",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shop_rounded, color: Colors.green),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Jersey",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.green,
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
              'Choose from the assortment at the NBA Store to find the perfect NBA merchandise for your collection.'
               'In addition to NBA jerseys, t-shirts and sweatshirts, our shop offers tons of officially licensed NBA collectibles that you can show off in your home or office.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
