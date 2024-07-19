import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(50),
          )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(50),
          )),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: 'Find For Nutrisi',
          prefixIcon: SvgPicture.asset(
            'assets/icons/search.svg',
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
