import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/model/akses.dart';
import 'package:gojek/thema.dart';

class ItemAkses extends StatelessWidget {
  final Akses akses;

  ItemAkses({super.key, required this.akses});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: green2, borderRadius: BorderRadius.circular(20)),
            child: SvgPicture.asset(
              'assets/icons/goride.svg',
              color: Colors.white,
              width: 24,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              akses.desc,
              style: regular14.copyWith(color: dark1),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          SvgPicture.asset(
            'assets/icons/left.svg',
            height: 24,
            color: dark1,
          )
        ],
      ),
    );
  }
}
