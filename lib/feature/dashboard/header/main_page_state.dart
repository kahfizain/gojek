import 'package:flutter/material.dart';
import 'package:gojek/feature/chat/chat_page.dart';
import 'package:gojek/feature/dashboard/dashboard.dart';
import 'package:gojek/feature/dashboard/data/main_page_switch.dart';
import 'package:gojek/feature/dashboard/header/main_page.dart';
import 'package:gojek/feature/home/home_page.dart';
import 'package:gojek/feature/order/order_page.dart';
import 'package:gojek/feature/promo/promo_page.dart';

class MainPageState extends State<MainPage> {
  MainPageSwitch _pageSwitch = MainPageSwitch.Home;

  void _updatePageSwitch(MainPageSwitch pageSwitch) {
    setState(() {
      _pageSwitch = pageSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dashboard(
      updatePageSwitch: _updatePageSwitch,
      pageSwitch : _pageSwitch,
      body: switch(_pageSwitch){
      MainPageSwitch.Home => const HomePage(),
      MainPageSwitch.Promo => const PromoPage(),
      MainPageSwitch.Orders => const OrderPage(),
      MainPageSwitch.Chat => const ChatPage()
      },
    );
  }
}
