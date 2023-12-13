import 'package:flutter/material.dart';
import 'package:gojek/model/info_news.dart';
import 'package:gojek/thema.dart';

class ItemInfoNews extends StatelessWidget {

  final InfoNew  infoNew;

   ItemInfoNews({super.key, required this.infoNew});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/gopaylater.png',
          height: 14,
        ),
        const SizedBox( height: 8,),
        Text(infoNew.title, style: bold16.copyWith(color: dark1),),
        const SizedBox(height: 8,),
        Text(infoNew.description, style: regular14.copyWith(color: dark2),)
      ],
    );
  }
}
