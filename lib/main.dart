import 'package:flutter/material.dart';
import 'package:one_piece_list/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "main",
      home: Home(),
    );
  }
}