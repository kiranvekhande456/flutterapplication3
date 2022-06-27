//Flutter application 2

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List cake_items = [
    'Chocolate Cake',
    'Strawberry Cake',
    'Monginious Cake',
    'Pineapple Cake',
    'Egg Cake',
    'Vannila Cake',
    'Ice- Cream Cake',
    '2-tier Cake',
    '3-tier Cake',
    'Special Cake',
  ];

  List cake_images = [
    "asset/chocolate cake.webp",
    "asset/strawberry cake.jpg",
    "asset/monginis cake.webp",
    "asset/pineapple cake.webp",
    "asset/egg cake.jpeg",
    "asset/vanilla cake.jpg",
    "asset/ice-cream-sundae-cake-3.jpg",
    "asset/two tier cake.jpg",
    "asset/three tier cake.webp",
    "asset/special cake.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Cake Shop'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: double.maxFinite,
          width: double.maxFinite,
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                color: Colors.cyan[200],
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('asset/two tier cake.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kiran Vekhande',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('kiranvekhande123@gmail.com'),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('My Orders'),
              ),
              ListTile(
                leading: Icon(Icons.help_center_outlined),
                title: Text('Help'),
              ),
              ListTile(
                leading: Icon(Icons.event_available_outlined),
                title: Text('About us'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.maxFinite,
              child: const Text(
                'Welcome To Our Cake Shop!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 600,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 10.0),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: double.maxFinite,
                      child: Card(
                        margin: const EdgeInsets.all(5.0),
                        color: Colors.cyan[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${cake_items[index]}"),
                            SizedBox(
                              height: 140,
                              width: 140,
                              child: Image.asset("${cake_images[index]}"),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Custumizabel Cake',
        onPressed: () {},
        icon: const Icon(Icons.cake),
        label: const Text('Click here for more cake info'),
      ),
    );
  }
}
