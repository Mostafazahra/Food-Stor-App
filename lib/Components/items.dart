import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodstoreapp/constants.dart';
import 'package:foodstoreapp/models/items.dart';
import 'package:foodstoreapp/pages/details_item.dart';

class Items extends StatelessWidget {
  const Items({
    required this.item,
    required this.index,
  });

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsItem(demoItems[index]),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Color(item.color)),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 115,
              left: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                      ),
                      Text(
                        '\$ ${item.price}',
                        style: TextStyle(
                            color: kRedColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: IconButton(
                        icon: SvgPicture.asset('assets/icons/heart.svg'),
                        onPressed: () {}),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
