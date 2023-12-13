import 'package:flutter/material.dart';
import 'package:gojek/feature/home/components/akses/akses_page.dart';
import 'package:gojek/feature/home/components/goclub/goclube_page.dart';
import 'package:gojek/feature/home/components/menus_gojek/menus_gojek_page.dart';
import 'package:gojek/feature/home/components/menus_gopay/gopay_page.dart';
import 'package:gojek/feature/home/components/news/news_page.dart';
import 'package:gojek/feature/home/components/search/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchHome(),
          MenuGoPayPage(),
          MenusGoJekPage(),
          GoCLubePage(),
          AksesPage(),
          NewsPage()
        ],
      )),
    );
  }
}
