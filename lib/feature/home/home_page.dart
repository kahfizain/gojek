import 'package:flutter/material.dart';
import 'package:gojek/feature/home/components/goclub/goclube.dart';
import 'package:gojek/feature/home/components/menus_gojek/menus_gojek.dart';
import 'package:gojek/feature/home/components/menus_gopay/gopay.dart';
import 'package:gojek/feature/home/components/search/search.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Search(),MenuGoPay(), MenusGoJek(), GoCLube()/*, Akses(), News()*/],
          )),
    );

  }
}
