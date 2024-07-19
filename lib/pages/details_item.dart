import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:foodstoreapp/constants.dart';
import 'package:foodstoreapp/models/items.dart';

class DetailsItem extends StatelessWidget {
  final Item detailItem;
  DetailsItem(this.detailItem);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Transform.translate(
            offset: Offset(kDefualtPadding * 0.5, 0.5),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        title: Text('Details'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/dots.svg'),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              color: Color(detailItem.color),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              detailItem.name,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  width: 12,
                                )
                              ],
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/heart.svg'))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    color: kRedColor,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: kRedColor,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      detailItem.description,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: detailItem.vitamins.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 30,
                            width: 80,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(detailItem.vitamins[index]),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ingredients',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: detailItem.ingrediants.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(
                                detailItem.ingrediants[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                          fontSize: 20, color: kRedColor)),
                                  TextSpan(
                                      text: detailItem.price.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ],
                              )),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.red),
                                child: Text(
                                  'BuyNow',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ))
                      ],
                    )
                  ]),
            ),
          ),
          Hero(
            tag: detailItem.id,
            child: Image.asset(
              detailItem.image,
              height: size.height * 0.4,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
