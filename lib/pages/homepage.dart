import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodstoreapp/Components/bottom%20navigatorbar.dart';
import 'package:foodstoreapp/Components/category.dart';
import 'package:foodstoreapp/Components/items.dart';

import 'package:foodstoreapp/Components/search_bar.dart';
import 'package:foodstoreapp/constants.dart';
import 'package:foodstoreapp/models/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Transform.translate(
            offset: Offset(kDefualtPadding * 0.5, 0.5),
            child: IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            )),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/notification.svg'),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigateBarItem(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'Find the Best\nHealth for You',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Search(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/filter.svg'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CategoryList(),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: demoItems.length,
                itemBuilder: (BuildContext context, index) {
                  return Items(item: demoItems[index], index: index);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
