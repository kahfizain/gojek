import 'package:flutter/cupertino.dart';
import 'package:gojek/model/news.dart';
import 'package:gojek/thema.dart';

class ItemNews extends StatelessWidget {
  final News news;

  const ItemNews(this.news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 15, right: 15),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: dark4)),
        child: Column(
          children: [
            Image.asset('assets/images/${news.image}'),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: bold16.copyWith(color: dark1),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    news.description,
                    style: regular14.copyWith(color: dark2),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
