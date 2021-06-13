import 'package:flutter/material.dart';
import 'package:store_web/screens/store_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Store Web',
    theme: ThemeData(
      appBarTheme: AppBarTheme(color: Colors.white),
    ),
    home: StoreScreen(),
  ));
}
