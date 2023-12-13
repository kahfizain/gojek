import 'package:flutter/material.dart';
import 'package:gojek/feature/dashboard/header/top_nav.dart';
import 'package:gojek/feature/dashboard/data/main_page_switch.dart';
import 'package:gojek/thema.dart';

class Dashboard extends StatelessWidget {
  final ValueChanged<MainPageSwitch> updatePageSwitch;
  final MainPageSwitch pageSwitch;
  final Widget? body;

  const Dashboard(
      {super.key,
      required this.updatePageSwitch,
      required this.pageSwitch,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: green2,
            elevation: 0,
            toolbarHeight: 80,
            title: TopNav(
                updatePageSwitch: updatePageSwitch,
                pageSwitch: pageSwitch,
            ),
        ),
      body: body,
    );
  }
}
