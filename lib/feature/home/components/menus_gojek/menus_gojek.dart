import 'package:flutter/material.dart';
import 'package:gojek/datas/data_menu.dart';
import 'package:gojek/feature/home/components/menus_gojek/item_menus_gojek.dart';

class MenusGoJek extends StatelessWidget {
   MenusGoJek({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 190,
        child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 8, children: [
          ...goMenu.map((item) => ItemMenuGojek(gojekMenu: item))
        ],)
      )
    );
  }
}
