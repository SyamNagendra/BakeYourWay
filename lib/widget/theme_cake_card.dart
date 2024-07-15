// widgets/theme_cake_card.dart

import 'package:flutter/material.dart';
import 'package:uidesign06/data/theme_cakes.dart';
import 'package:uidesign06/page/theme_details_page.dart';

class ThemeCakeCard extends StatelessWidget {
  final ThemeCake themeCake;

  const ThemeCakeCard({Key? key, required this.themeCake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ThemeDetailsPage(themeCake: themeCake),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Container(
              width: 100.0, // Adjust the width as needed
              // height: 100.0, // Adjust the height as needed
              child: Image.asset(themeCake.image, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                themeCake.name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                '\$${themeCake.price}',
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
