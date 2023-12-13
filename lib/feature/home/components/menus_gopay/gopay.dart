import 'package:flutter/material.dart';
import 'package:gojek/datas/data_menu.dart';
import 'package:gojek/feature/home/components/menus_gopay/item_gopay_menu.dart';
import 'package:gojek/thema.dart';

import 'gopay_saldo.dart';

class MenuGoPay extends StatelessWidget {
   MenuGoPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        height: 96,
        decoration: BoxDecoration(
            color: blue1, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFBBBBBB),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1)),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 8),
                child: GoPaySaldo()),
            ...goPayMenu.map((item) => ItemGoPayMenu(dataGojekMenu: item)),
          ],
        ),
      ),
    );
  }
}
