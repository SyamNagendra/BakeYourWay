// pages/theme_details_page.dart

import 'package:flutter/material.dart';
import 'package:uidesign06/data/theme_cakes.dart';

class ThemeDetailsPage extends StatelessWidget {
  final ThemeCake themeCake;

  const ThemeDetailsPage({Key? key, required this.themeCake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${themeCake.name} Cakes'),
      ),
      body: ListView.builder(
        itemCount: themeCake.cakes.length, 
        itemBuilder: (context, index) {
          final cake = themeCake.cakes[index]; 
          return Container(
            margin: EdgeInsets.all(8.0),
            height: 150.0, // Adjust the height as needed
            width: double.infinity, // Full width of the screen
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: 100.0, // Adjust the width as needed
                    height: 100.0, // Adjust the height as needed
                    child: Image.asset(cake.image, fit: BoxFit.cover),
                  ),
                  SizedBox(width: 10.0), // Space between image and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cake.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${cake.price}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}