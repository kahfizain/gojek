import 'package:flutter/material.dart';
import 'package:gojek/thema.dart';

class SearchComponents extends StatelessWidget {
  final TextEditingController value = TextEditingController();

  SearchComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 30),
      child: SizedBox(
        height: 40.0,
        child: TextField(
          controller: value,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Color(0xFFE8E8E8)),
              ),
              hintText: 'Cari laynan, makan, & tujuan',
              hintStyle: regular14.copyWith(color: dark3),
              prefixIcon: const Icon(
                Icons.search,
                size: 20.0,
              ),
              suffixIcon: IconButton(
                  iconSize: 20.0,
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    value.clear();
                  }),
              fillColor: const Color(0xFFFAFAFA),
              hoverColor: const Color(0xFFE8E8E8),
              focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Color(0xFFE8E8E8)))),
        ),
      ),
    );
  }
}
