import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture app',
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme(Theme.of(context).textTheme),
        primaryColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ProductsScreen(),
    );
  }
}
