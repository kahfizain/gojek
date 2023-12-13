import 'package:flutter/material.dart';
import 'package:gojek/datas/data_akses.dart';
import 'package:gojek/feature/home/components/akses/item_akases.dart';
import 'package:gojek/thema.dart';

class AksesPage extends StatelessWidget {
   AksesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 16, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Akses Cepat", style:bold18.copyWith(color: dark1) ,),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xFFE8E8E8))),
            child: Column(
              children: [
                ...ListAkses.map((item) => ItemAkses(akses: item))
              ],
            ),
          )
        ],
      ),
    );
  }
}
