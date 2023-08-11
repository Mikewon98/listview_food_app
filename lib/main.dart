import 'package:flutter/material.dart';
import 'package:list_view_example/pages/cart_page.dart';
import 'package:list_view_example/pages/item_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'List view Food App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: const Color(0xFFF5F5F3),
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const HomePage(),
          "cartpage": (context) => const CartPage(),
          "itempage": (context) => const ItemPage(),
        });
  }
}
