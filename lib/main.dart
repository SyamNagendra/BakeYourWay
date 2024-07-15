import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uidesign06/page/cart_page.dart';
import 'package:uidesign06/page/login_page.dart';
import 'package:uidesign06/model/cart_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'Cake App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: {
          '/cart' : (context) => CartPage(),
        },
      ),
    );
  }
}
