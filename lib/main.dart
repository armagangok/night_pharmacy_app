import 'package:farmacy_app/app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'app/screens/home/homescreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      title: 'Find Night Pharmacy',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
