import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/model/menu_gojek.dart';
import 'package:gojek/thema.dart';

class ItemGoPayMenu extends StatelessWidget {
  final GojekMenu dataGojekMenu;

  const ItemGoPayMenu({
    super.key,
    required this.dataGojekMenu

  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)),
              child: SvgPicture.asset(
                'assets/icons/${dataGojekMenu.icon}.svg',
                color: blue1,
              ),            ),
            const SizedBox(
              height: 7,
            ),
            Text(dataGojekMenu.title, style:semibold14.copyWith(color: Colors.white),)
          ],
        ));
  }
}
