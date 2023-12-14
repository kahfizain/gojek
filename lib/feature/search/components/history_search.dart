import 'package:flutter/material.dart';
import 'package:gojek/datas/data_history.dart';
import 'package:gojek/feature/search/components/item/item_history_search.dart';
import 'package:gojek/model/history.dart';
import 'package:gojek/thema.dart';

class HistorySearch extends StatelessWidget {
  final String title;
  final List<History> listHistory ;
    HistorySearch({super.key, required this.title, required this.listHistory});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: bold18.copyWith(color: dark1),),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 130,
          child:  GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            childAspectRatio: 2.2,
            children: [
              ...listHistory.map((item) => ItemHistorySearch(history: item))
            ],)

        ),
      ],

    ),);
  }
}
