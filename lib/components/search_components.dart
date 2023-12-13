import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/thema.dart';

class SearchComponents extends StatelessWidget {
   SearchComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 30),
      child: Row(
        children: [
          Flexible(
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: const Color(0xFFE8E8E8))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: dark1,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cari layanan, makan , & tujuan",
                      style: regular14.copyWith(color: dark3),
                    ),
                  ],
                ),
              )),

        ],
      ),
    );
  }
}
