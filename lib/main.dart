import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Salshabilla Tiara Anggraeni'),
        ),
        body: ListView(
          children: [
            ShoeCard(name: 'Nike SB Zoom Blazer Mid Premium', price: 28795),
            ShoeCard(name: 'Nike Air Zoom Pegasus Men\'s Rood Running Shoes', price: 29995),
            ShoeCard(name: 'Nike ZoomX Vaporfly Men\'s Road Racing Shoe', price: 219695),
            ShoeCard(name: 'Nike Air Force 1 S50 Older Kids\' Shoe', price: 86295),
            ShoeCard(name: 'Nike Waffle One Men\'s Shoes', price: 28295),
          ],
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String name;
  final int price;

  ShoeCard({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('\$$price'),
        trailing: Image.asset('assets/images/shoes.png'),
      ),
    );
  }
}
