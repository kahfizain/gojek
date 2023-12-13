import 'package:flutter/material.dart';
import 'package:gojek/thema.dart';

class GoPaySaldo extends StatelessWidget {
  const GoPaySaldo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 11,
          width: 118,
          decoration: const BoxDecoration(
              color: Color(0xFF9CCDDB),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 73,
          width: 120,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/gopay.png', height: 14),
              const SizedBox( height: 2,),
              Text('Rp.200.000', style: bold16.copyWith(color: dark1),),
              Text('Klik & review', style: semibold12_5.copyWith(color: green1),),

            ],
          ),
        ),
      ],
    );
  }
}
