import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodstoreapp/constants.dart';
import 'package:foodstoreapp/models/Category.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    super.key,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          itemCount: demoCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectindex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: kDefualtPadding * 0.8),
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(demoCategories[index].icon),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      demoCategories[index].name,
                      style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor,
                          fontWeight: selectindex == index
                              ? FontWeight.bold
                              : FontWeight.normal),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
