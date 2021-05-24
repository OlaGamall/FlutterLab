import 'dart:convert';

import 'package:flutterLab/screens/ProductDetails.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutterLab/widgets/product.dart';

class Home extends StatefulWidget {
  static const routeName = "/home";
  //HttpClient
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List products = [];
  var url = Uri.parse('https://fakestoreapi.com/products');

  @override
  Widget build(BuildContext context) {
    http.get(url).then((value) {
      setState(() {
        products = json.decode(value.body);
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: products
                .map(
                  (p) => GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(ProductDetails.routeName, arguments: {
                      'image': p['image'],
                      'description': p['description'],
                    }),
                    child: Product(
                      imageUrl: p['image'],
                      title: p['title'],
                      price: p['price'],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
