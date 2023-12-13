import 'package:flutter/material.dart';
import 'package:gojek/feature/dashboard/header/top_nav_content.dart';
import 'package:gojek/feature/dashboard/data/main_page_switch.dart';
import 'package:gojek/thema.dart';

class TopNav extends StatelessWidget {
  final ValueChanged<MainPageSwitch> updatePageSwitch;
  final MainPageSwitch pageSwitch;

  const TopNav({
    super.key,
    required this.updatePageSwitch,
    required this.pageSwitch
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: green1,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TopNavContent(
        updatePageSwitch: updatePageSwitch,
        pageSwitch: pageSwitch,
      ),
    );
  }
}
