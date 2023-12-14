import 'package:flutter/material.dart';
import 'package:gojek/model/history.dart';
import 'package:gojek/thema.dart';

class ItemHistorySearch extends StatelessWidget {
  final History history;

  const ItemHistorySearch({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
              color: dark4,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: const Color(0xFFE8E8E8))),
          child: Center(
            child: Text(
              history.historyValue,
              style: bold16.copyWith(color: green1, fontSize: 12),
            ),
          ),
        ));
  }
}
