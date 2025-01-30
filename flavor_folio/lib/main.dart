import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flavor_folio/models/shop.dart';
import 'package:flavor_folio/pages/shopping_cart.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp()
      )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
           home: const IntroPage(),
           routes: {
            '/intropage': (context) => const IntroPage(),
            '/menupage': (context) => const MenuPage(),
            '/cartpage': (context) => const Cart(),

           }
    );
  }
}

