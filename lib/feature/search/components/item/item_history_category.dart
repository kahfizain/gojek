import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/model/history.dart';
import 'package:gojek/thema.dart';

class ItemHistoryCategory extends StatelessWidget {
  final History history;

  const ItemHistoryCategory({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
          padding: const EdgeInsets.only(left: 2, right: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: const Color(0xFFE8E8E8))),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                'assets/icons/${history.icon}.svg',
                height: 10,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                history.historyValue,
                style: bold16.copyWith(color: dark1, fontSize: 12),
              ),
            ],
          )),
    );
  }
}
