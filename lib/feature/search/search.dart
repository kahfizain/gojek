import 'package:flutter/material.dart';
import 'package:gojek/components/search_components.dart';
import 'package:gojek/datas/data_history.dart';
import 'package:gojek/feature/search/components/history_category.dart';
import 'package:gojek/feature/search/components/history_search.dart';
import 'package:gojek/thema.dart';

class Search extends StatelessWidget {
  Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Pencarian",
              style: bold18.copyWith(color: dark1),
            )),
        body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SearchComponents(),
                  HistorySearch(
                      title: 'Pernah Kamu cari', listHistory: [...listHistory]),
                  HistoryCategory(),
                  HistorySearch(
                      title: 'pencarian Populer',
                      listHistory: [...listPopulerHistory]),
                ],
              ),
            )));
  }
}
