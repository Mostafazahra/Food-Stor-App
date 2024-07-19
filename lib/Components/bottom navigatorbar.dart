import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigateBarItem extends StatelessWidget {
  const BottomNavigateBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: SvgPicture.asset('assets/icons/home.svg'),
            onTap: () {},
          ),
          GestureDetector(
            child: SvgPicture.asset('assets/icons/chat.svg'),
            onTap: () {},
          ),
          GestureDetector(
            child: SvgPicture.asset('assets/icons/buy.svg'),
            onTap: () {},
          ),
          GestureDetector(
            child: SvgPicture.asset('assets/icons/profile.svg'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
