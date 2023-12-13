import 'package:flutter/material.dart';
import 'package:gojek/feature/dashboard/header/main_page.dart';

import 'feature/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
