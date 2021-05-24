import 'package:flutter/material.dart';
import 'package:flutterLab/screens/Home.dart';
import 'package:flutterLab/screens/ProductDetails.dart';
import 'package:flutterLab/screens/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        Home.routeName: (_) => Home(),
        ProductDetails.routeName: (_) => ProductDetails(),
      },
    );
  }
}

