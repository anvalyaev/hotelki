import 'package:flutter/material.dart';
import 'wishlist.dart';

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HotElki',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WishList(),  
    );
  }
}