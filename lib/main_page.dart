import 'package:flutter/material.dart';

import 'latihan_2.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ElevatedButton(onPressed: (){
            Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => latihan_2(),
            ),
          );
           }, child: Text('Latihan Layout')),

           ElevatedButton(onPressed: (){
            Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => latihan_2(),
            ),
          );
           }, child: Text('ayo klik'))
          ],
        ),
      ),
    );
  }
}