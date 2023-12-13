import 'package:flutter/material.dart';
import 'package:gojek/feature/dashboard/data/main_page_switch.dart';
import 'package:gojek/thema.dart';

class TopNavButton extends StatelessWidget {
  final ValueChanged<MainPageSwitch> updatePageSwitch;
  final MainPageSwitch pageSwitch;

  final String title;

  const TopNavButton({
    super.key,
    required this.updatePageSwitch,
    required this.pageSwitch,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          decoration: _decoration(context, title),
          child: TextButton(
              onPressed: () {
                if (title == 'Beranda') {
                  updatePageSwitch(MainPageSwitch.Home);
                }
                if (title == 'Promo') {
                  updatePageSwitch(MainPageSwitch.Promo);
                }
                if (title == 'Pesanan') {
                  updatePageSwitch(MainPageSwitch.Orders);
                }
                if (title == 'Chat') {
                  updatePageSwitch(MainPageSwitch.Chat);
                }
              },
            child: Center(
              child: Text(title, style: semibold14.copyWith(color: Colors.green),
              ),
            ),
          ),
        ));
  }

  Decoration? _decoration(BuildContext context, String title) {
    bool selected = false;
    switch (pageSwitch) {
      case MainPageSwitch.Home:
        if (title == 'Beranda') {
          selected = true;
        }
      case MainPageSwitch.Promo:
        if (title == 'Promo') {
          selected = true;
        }
      case MainPageSwitch.Orders:
        if (title == 'Pesanan') {
          selected = true;
        }
      case MainPageSwitch.Chat:
        if (title == 'Chat') {
          selected = true;
        }
    }
    if (selected) {

      return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      );
    }
    return null;
  }

}


