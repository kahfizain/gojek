import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/model/menu_gojek.dart';
import 'package:gojek/thema.dart';

class ItemMenuGojek extends StatelessWidget {

  final GojekMenu gojekMenu;

  const ItemMenuGojek({super.key, required this.gojekMenu});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: gojekMenu.icon == 'goclub' ? Colors.white : gojekMenu.color,
            borderRadius: BorderRadius.circular(20)),
          child: SvgPicture.asset(
            'assets/icons/${gojekMenu.icon}.svg',
            color: gojekMenu.icon == 'goclub'
                ? gojekMenu.color
                : gojekMenu.icon == 'other'
                ? dark2
                : Colors.white,
            width: 24,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
            gojekMenu.title,
        style: regular12_5.copyWith(color: dark2),)
      ],
    );
  }
}
