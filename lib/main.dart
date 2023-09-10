import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme().copyWith(color: Colors.blue),
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
