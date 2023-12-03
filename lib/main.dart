import 'package:demo/models/shop.dart';
import 'package:demo/pages/cart_page.dart';
import 'package:demo/pages/intro_page.dart';
import 'package:demo/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}


// statelesswidget 无需更改状态的 部件
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        "/intropage": (context) => const IntroPage(),
        "/menupage": (context) => const MenuPage(),
        '/cartpage':(context)=>const CartPage()
      },
    );
  }
}
