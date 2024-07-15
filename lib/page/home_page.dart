// pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:uidesign06/core/color.dart';
import 'package:uidesign06/core/text_style.dart';
import 'package:uidesign06/data/category.dart';
import 'package:uidesign06/data/items.dart';
import 'package:uidesign06/data/theme_cakes.dart'; // Add this import
import 'package:uidesign06/page/details_page.dart';
import 'package:uidesign06/page/theme_details_page.dart'; // Add this import
import 'package:uidesign06/widget/Category_btn.dart';
import 'package:uidesign06/widget/circurl_btn.dart';
import 'package:uidesign06/widget/item_card.dart';
import 'package:uidesign06/widget/item_card_02.dart';
import 'package:uidesign06/widget/theme_cake_card.dart'; // Add this import

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Bake your',
                              style: txtHeading,
                            ),
                            TextSpan(
                              text: '\nWay',
                              style: txtHeading.copyWith(
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleButton(
                        onTap: () {},
                        image: 'search.svg',
                      ),
                    ],
                  ),
                ),
                categoryMenu(),
                SizedBox(height: 20), // Add space before the cakes list
                Container(
                  height: 300, // Adjust the height for better visibility
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 20.0),
                    itemCount: cakes.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(cake: cakes[index]),
                            ),
                          );
                        },
                        child: ItemCard(cake: cakes[index]),
                      );
                    },
                  ),
                ),
                SizedBox(
                    height: 50), // Add space before the "Recommended" section
                Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 21.0,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 150, // Adjust the height for better visibility
                  child: ListView.builder(
                    itemCount: cakes.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: ItemCard02(cake: cakes[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20), // Add space before the "Themes" section
                Text(
                  'Themes',
                  style: TextStyle(
                    fontSize: 21.0,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 180, // Adjust the height for better visibility
                  child: ListView.builder(
                    itemCount: themeCakes.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150, // Adjust the width for better visibility
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThemeDetailsPage(themeCake: themeCakes[index]),
                              ),
                            );
                          },
                          child: ThemeCakeCard(themeCake: themeCakes[index]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  categoryMenu() {
    return Container(
      height: 80.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              setState(() => selectIndex = index);
            },
            child: CategoryButton(
              category: category,
              index: selectIndex,
            ),
          );
        },
      ),
    );
  }
}
