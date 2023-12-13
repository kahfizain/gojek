import 'package:flutter/material.dart';
import 'package:gojek/datas/data_news.dart';
import 'package:gojek/feature/home/components/news/item_info_news.dart';
import 'package:gojek/feature/home/components/news/item_news.dart';

class NewsPage extends StatelessWidget {
   NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(left: 10, right: 20, top: 32),
        child: Column(
          children: [
            // todo info news
            ...listInfoNew.map((item) => ItemInfoNews(infoNew: item)),

            const SizedBox(
              height: 24,
            ),

            ...listNews.map((item) => ItemNews(item))
          ]
        ))
      ],
    );
  }
}
