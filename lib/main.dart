import 'package:flutter/material.dart';
import 'package:online_shopping_ui/screens/detail_screen.dart';
import 'package:online_shopping_ui/screens/home_screen.dart';
import 'package:online_shopping_ui/utils/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}
